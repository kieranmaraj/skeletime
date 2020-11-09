var protobuf = require('protobufjs');
const dgram = require('dgram');
const maxApi = require('max-api');

const server = dgram.createSocket('udp4');  // socket to receive data from mediapipe

let Wrapper;
let parsed;
let DATA = {
  hand_1_rect: {},
  hand_1_landmarks: {},
  hand_2_rect: {},
  hand_2_landmarks: {},
  pose_rect: {},
  pose_landmarks: {}
};

// let DATA = {};  //hold the data received from skeletime
let POSE_DATA = [[/*poseRect*/], [/*poseLandmarks*/]];  //store pose data to turn into list
let HAND_DATA = [[/*hand1_rect*/], [/*hand1_landmarks*/], [/*hand2_rect*/], [/*hand2_landmarks*/]]; //store hands data to turn into list

const features =               ["hand_1_rect", "hand_1_landmarks", "hand_2_rect", "hand_2_landmarks", "pose_rect", "pose_landmarks"]; //features list, to help with parsing DATA into the correct arrays
let skeletimeToListFunctions = [rectToList,     handToList,         rectToList,    handToList,         rectToList,  poseToList];  // functions to parse DATA to correct array

let outputType = 0;

// Filters to take only particular landmarks from the pose and hand landmark objects
let poseFilter = [];
let handFilter = [];

const handlers={};
handlers.init = init;
handlers.setPoseFilter = setPoseFilter;
handlers.setHandFilter = setHandFilter;
handlers.setOutputType = setOutputType;

maxApi.addHandlers(handlers);

init();

server.on('error', (err) => {
    console.log(`server error:\n${err.stack}`);
    server.close();
  });
  
  server.on('message', (msg, rinfo) => {
    // console.log(`Received from ${rinfo.address}:${rinfo.port}\n`);
    // console.log(msg)
    parseMsg(msg);
  });
  
  server.on('listening', () => {
    const address = server.address();
    console.log(`server listening ${address.address}:${address.port}`);
  });

server.bind(8080);

protobuf.load('mediapipe/skeletime_broadcast.proto', function(err, root){
    if(err){throw err};

    Wrapper = root.lookupType("mediapipe.SkeletimeBroadcast");

});

async function parseMsg(msg){
    try {

        // console.log("received from mediapope...")
        //decode and parse the received protobuf binary data into a js object      
        const decodedMessage = Wrapper.decode(msg);
        parsed = Wrapper.toObject(decodedMessage);
        // console.log(parsed);
        // console.log("wrapper parsed");

        // console.log(parsed);

        if(parsed.handRect){              //Hand bounds information
          let index = parsed.handIndex;
          if(index < 3){
            DATA[`hand_${index}_rect`] = parsed;
            // const dict = await maxApi.setDict(`hand_${index}_rect`, parsed);
            }
        }else if(parsed.handLandmarks){   //Hand landmark information
          let index = parsed.handIndex;
          if(index < 3){
            DATA[`hand_${index}_landmarks`] = parsed;
            // const dict = await maxApi.setDict(`hand_${index}_landmarks`, parsed);
          }
        }else if(parsed.poseRect){        //Pose bounds information
          DATA[`pose_rect`] = parsed;
        //   const dict = await maxApi.setDict('pose_rect', parsed);
        }else if(parsed.poseLandmarks){   //Pose landmark information
          DATA[`pose_landmarks`] = parsed;
        //   const dict = await maxApi.setDict('pose_landmarks', parsed);
        }

        // socket.emit("rawData", JSON.stringify(DATA));
        // console.log("done parse???");

        for(const prop in DATA){
            // console.log("for prop loop");
            const featNdx = features.indexOf(prop);
    
            if(featNdx<0){
                continue
            }
    
            skeletimeToListFunctions[featNdx](featNdx, DATA[prop]);
    
        }

        outputData();
    
        maxApi.setDict('data', JSON.parse(data));

      } catch (e) {
        if (e instanceof protobuf.util.ProtocolError) {
            // e.instance holds the so far decoded message with missing required fields
          } else {
            // console.log(e);
          }
      }
}

function rectToList(index, data){
    let x, y;
    let handIndex;

    if(data.handIndex){
        handIndex = data.handIndex
    }

    if(data.handRect){
        x=data.handRect.xCenter;
        y=data.handRect.yCenter;
    }

    if(data.poseRect){
        x=data.poseRect.xCenter;
        y=data.poseRect.yCenter;
    }

    if(!handIndex){
        POSE_DATA[0] = [x, y];
        return
    }

    HAND_DATA[index] = [x, y];

}

function poseToList(index, data){
    if(!data.poseLandmarks){
        return
    }

    data = data.poseLandmarks.landmark;

    POSE_DATA[1] = [];

    const keys = Object.keys(data);

    for(let i = 0; i < keys.length; i++){

        if(poseFilter[i+1]){
            const mark = data[keys[i]];

            POSE_DATA[1].push(mark.x);
            POSE_DATA[1].push(mark.y);
        }  
    }

    // POSE_DATA[1].splice(-6*2); //skeletime seems to be spitting out 6 duplicate points at the end of the list - not sure why. this is to remove the dups
    // console.log(POSE_DATA[1]);
}

function handToList(index, data){
    if(!data.handLandmarks){
        return
    }

    data = data.handLandmarks.landmark;

    HAND_DATA[index] = [];

    if(index ==  1){
        const keys = Object.keys(data);

        for(let i = 0; i < keys.length; i++){
            if(handFilter[i+1]){
                const mark = data[keys[i]];

                HAND_DATA[index].push(mark.x);
                HAND_DATA[index].push(mark.y);
                HAND_DATA[index].push(mark.z);
            }
        }
    }

    if(index == 3){
        const keys = Object.keys(data);

        // There is a bug in the skeletime broadcast: whenever two hands are detected, it merges the points from both hands
        // and broadcasts them out in a single object, while also continues to broadcast the first hand in its own object

        // Collecting the landmarks from index 21 ensures that the second hand is collected (when available) in this scope 

        for(var i = 21; i < keys.length; i++){
            if(handFilter[(i-21)+1]){
                const mark = data[keys[i]];
                HAND_DATA[index].push(mark.x);
                HAND_DATA[index].push(mark.y);
                HAND_DATA[index].push(mark.z);
            }
        }
    }


}

function outputData(){
    switch(outputType){
        case 0:
            // console.log("no output");
            break;
        case 1:
            //output pose only

            if(poseFilter[0]){              // If using pose 'rectangle' data
                output(POSE_DATA, "pose")
            }else{
                output([POSE_DATA[1]], "pose");   // Output only pose landmarks, no rect
            }
            break;

        case 2:
            //output hands only

            if(handFilter[0]){
                output(HAND_DATA, "hands");     // Output hands with rect data
            }else{
                output([HAND_DATA[1].concat(HAND_DATA[3])], "hands");
            }

            break;
            
        case 3:
            //output both
            if(handFilter[0] && poseFilter[0]){
                output(POSE_DATA.concat(HAND_DATA), "full");                                // both pose and hands use resepctive rects
            }else if(poseFilter[0]){
                output(POSE_DATA.concat([HAND_DATA[1].concat(HAND_DATA[3])]), "full");        // only pose uses rects, hands do not
            }else if(handFilter[0]){
                output([POSE_DATA[1].concat(HAND_DATA)], "full");                             // only hands use their rects, pose does not
            }else{
                output([POSE_DATA[1].concat(HAND_DATA[1].concat(HAND_DATA[3]))], "full");     // neither hands nor pose use rect data
            }

            break;
    }
}

async function output(arr, label, ){
    let outString = '';

    // console.log("outputting?");  

    for(chunk of arr){
        outString += chunk.join(' ');
        outString += ' ';
    }
    
    await maxApi.outlet(`/${label} ${outString}`);

}

function setPoseFilter(...v){
    if(v.length != 26){
        return
    }

    console.log("Set Pose Filter...");
    poseFilter = v;
}

function setHandFilter(...v){
    if(v.length != 22){return}
    console.log("Set Hand Filter...");
    handFilter = v;
}

function setOutputType(i){
    outputType = i;
}


async function init(){
    await maxApi.outlet(`/init 1`);
}
  