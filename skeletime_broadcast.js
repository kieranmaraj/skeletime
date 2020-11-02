var protobuf = require('protobufjs');
const dgram = require('dgram');
const maxApi = require('max-api');
const publicIp = require('public-ip');
// const WebSocket = require('ws');
const io = require("socket.io-client");
const { type } = require('os');

const SOCKET_PORT = 5000; //Port for the websocket server to handle connections
// const socket = io(`http://https://skeleweb.herokuapp.com`); // Websocket client

let broadcastMethod = 0; // 0 for internet, 1 for local
let socket = io(`https://skeleweb.herokuapp.com`);
// let socketLocal = io(`http://localhost:${SOCKET_PORT}`)


const server = dgram.createSocket('udp4');  // socket to receive data from mediapipe


let typeInfo = {
  type : 'data_broadcast',
  active: false
};

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

// M4M handlers
const handlers = {};
handlers.getIp = getIp;
handlers.init = init;
handlers.broadcast = broadcast;
handlers.setBroadcastMethod = setBroadcastMethod;
// handlers.setServerPort = setServerPort;

maxApi.addHandlers(handlers);

init();

//-------------------------------------- Receiving Data From Mediapipe App -----------------------------------------------//
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

/*----------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------*/
//----------------------------------------------- Parse Mediapipe Data ------------------------------------------//
async function parseMsg(msg){
    try {

        //decode and parse the received protobuf binary data into a js object      
        const decodedMessage = Wrapper.decode(msg);
        parsed = Wrapper.toObject(decodedMessage);
        // console.log(parsed);

        if(parsed.handRect){              //Hand bounds information
          let index = parsed.handIndex;
          if(index < 3){
            DATA[`hand_${index}_rect`] = parsed;
            const dict = await maxApi.setDict(`hand_${index}_rect`, parsed);
            }
        }else if(parsed.handLandmarks){   //Hand landmark information
          let index = parsed.handIndex;
          if(index < 3){
            DATA[`hand_${index}_landmarks`] = parsed;
            const dict = await maxApi.setDict(`hand_${index}_landmarks`, parsed);
          }
        }else if(parsed.poseRect){        //Pose bounds information
          DATA[`pose_rect`] = parsed;
          const dict = await maxApi.setDict('pose_rect', parsed);
        }else if(parsed.poseLandmarks){   //Pose landmark information
          DATA[`pose_landmarks`] = parsed;
          const dict = await maxApi.setDict('pose_landmarks', parsed);
        }

        socket.emit("rawData", JSON.stringify(DATA));
        // socketLocal.emit("rawData", JSON.stringify(DATA));
        // wsBroadcast();

      } catch (e) {
        if (e instanceof protobuf.util.ProtocolError) {
            // e.instance holds the so far decoded message with missing required fields
          } else {
            // console.log(e);
          }
      }
}

socket.on("connect", () => {
  console.log("connected: " + socket.connected);
  typeInfo.active = true;
  maxApi.outlet("/connection connected");
});

socket.on("getType", ()=>{
  // console.log("received get type message");
  socket.emit("assignType", typeInfo.type);
});

socket.on("disconnect", ()=>{
  maxApi.outlet("/connection disconnected");
  typeInfo.active = false;
})

function broadcast(){
  
  socket.emit("rawData", "hello here is some data from the broadcaster patch wow");
}

function setBroadcastMethod(n){
  if(broadcastMethod != n){
    broadcastMethod = n;

    if(broadcastMethod == 0){
      socket = io(`http://localhost:${SOCKET_PORT}`);
    }else{
      socket = io(`http://localhost:${SOCKET_PORT}`);
    }
  }

}



//----------------------------------------- Utility Functions ----------------------------------------------//

function getIp(){
  // const ip = await publicIp.v4();
  // await maxApi.outlet(`/myip ${ip}`);
}

async function init(){
  await maxApi.outlet(`/init 1`);
}

