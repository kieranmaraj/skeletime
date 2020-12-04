var protobuf = require('protobufjs');
const dgram = require('dgram');
const maxApi = require('max-api');
const io = require("socket.io-client");
let socket = io(`https://skeleweb.herokuapp.com`);

let typeInfo = {
    type : 'local',
    active: false
};

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
});

function broadcast_skeleton(){
    // console.log("broadcast??");
    socket.emit("skeleton", JSON.stringify(DATA));
}

const from_mediapipe = dgram.createSocket('udp4'); 

let Wrapper;
let parsed;

// Organized, unfiltered data
// hand_1 is always the left hand
// hand_2 is always the right hand

let DATA = {
    pose_rect: {},
    pose_landmarks: {},
    hand_1_rect: {},
    hand_1_landmarks: {},
    hand_2_rect: {},
    hand_2_landmarks: {},
  };

let pose_landmark_filter = [];
let pose_rect_filter = [];
let hand_landmark_filter = [];
let hand_rect_filter = [];

let pose_landmark_is_active = false;
let pose_rect_is_active = false;
let hand_landmark_is_active = false;
let hand_rect_is_active = false;

const handlers={};
handlers.init = init;
handlers.setPoseRectFilter = setPoseRectFilter;
handlers.setPoseFilter = setPoseFilter;
handlers.setHandRectFilter = setHandRectFilter;
handlers.setHandFilter = setHandFilter;

maxApi.addHandlers(handlers);

protobuf.load('mediapipe/skeletime_broadcast.proto', function(err, root){
    if(err){throw err};

    Wrapper = root.lookupType("mediapipe.SkeletimeBroadcast");

});

from_mediapipe.on('error', (err) => {
    console.log(`server error:\n${err.stack}`);
    from_mediapipe.close();
  });
  
from_mediapipe.on('message', (msg, rinfo) => {
    // console.log(`Received from ${rinfo.address}:${rinfo.port}\n`);
    parseMsg(msg);
});
  
from_mediapipe.on('listening', () => {
    const address = from_mediapipe.address();
    console.log(`server listening ${address.address}:${address.port}`);
});

from_mediapipe.bind(8080);

init();


async function parseMsg(msg){
    const decodedMessage = Wrapper.decode(msg);
    parsed = Wrapper.toObject(decodedMessage);

    if(parsed.poseLandmarks){
        // out("poseLandmarks", parsed)
        DATA.pose_landmarks = parsed.poseLandmarks;
    }

    if(parsed.poseRect){
        // out("poseRect", parsed)
        DATA.pose_rect = parsed.poseRect;
    }

    if(parsed.handClassification){
        // console.log(parsed.handClassification)
        // out("handClassification", parsed)

        const class_arr = parsed.handClassification.classification;
        // console.log(class_arr.length);

        let index_arr = [];

        if(class_arr[0].label == "Left"){
            index_arr[0] = 0;   // 0 = left
            index_arr[1] = 1;   // 1 = right
        }else{
            index_arr[0] = 1; 
            index_arr[1] = 0;
        }

        if(parsed.handLandmarks){

            const mark_arr = parsed.handLandmarks;

            for(let i = 0; i < mark_arr.length; i++){
                const handmarks = mark_arr[i];

                if(index_arr[i] == 0){  // if this is the left hand
                    DATA.hand_1_landmarks = handmarks;
                }else if(index_arr[i] == 1){    //otherwise if it is the right hand
                    DATA.hand_2_landmarks = handmarks;
                }
            }
        }
    
        if(parsed.handRect){

            const rect_arr = parsed.handRect;

            for(let i = 0; i < rect_arr.length; i++){
                const rect = rect_arr[i];

                if(index_arr[i] == 0){  // if this is the left hand
                    DATA.hand_1_rect = rect;
                }else if(index_arr[i] == 1){    //otherwise if it is the right hand
                    DATA.hand_2_rect = rect;
                }
            }
        }
    }

    broadcast_skeleton();
    filter_data();
}

function filter_data(){
    let [poseRectString, poseMarkString, handRectString, handMarkString] = ["", "", "", ""];
    let [poseString, handString, fullBodyString] = ["", "", ""];

    if(pose_rect_is_active && DATA.pose_rect){
        // console.log("pose rect?");
        // console.log(DATA.pose_rect);

        let poseRectKeys = Object.keys(DATA.pose_rect);

        for(let i = 0; i < poseRectKeys.length; i++){
            if(pose_rect_filter[i]){
                poseRectString += DATA.pose_rect[poseRectKeys[i]] + " ";
            }
        }

        // maybe do some sort of checking here/end of above for loop to remove the trailing space character
        // console.log(poseRectString);
    }

    if(pose_landmark_is_active && DATA.pose_landmarks){
        // console.log("pose landmarks")

        // console.log(DATA.pose_landmarks);

        const landmarks = DATA.pose_landmarks.landmark;

        // const p_keys = Object.keys(landmarks[0]);

        for(let i = 0; i < landmarks.length; i++){
            if(pose_landmark_filter[i]){

               p_mark = landmarks[i];

               poseMarkString += p_mark.x + " ";
               poseMarkString += p_mark.y + " ";
            }
        }

        // console.log(poseMarkString);
    }

    if(hand_rect_is_active){
        if(DATA.hand_1_rect){
            let handRectKeys = Object.keys(DATA.hand_1_rect);

            for(let i = 0; i < hand_rect_filter.length; i++){
                if(hand_rect_filter[i]){
                    handRectString += DATA.hand_1_rect[handRectKeys[i]] + " ";
                }
            }
        }



        if(DATA.hand_2_rect){
            let handRectKeys = Object.keys(DATA.hand_2_rect);

            for(let i = 0; i < hand_rect_filter.length; i++){
                if(hand_rect_filter[i]){
                    handRectString += DATA.hand_2_rect[handRectKeys[i]] + " ";
                }
            }
        }
    }
    // console.log(hand_landmark_is_active);

    if(hand_landmark_is_active){
        // console.log("hello?")
        if(DATA.hand_1_landmarks.landmark){

            const hand = DATA.hand_1_landmarks.landmark;

            for(let i = 0; i < hand.length; i++){
                if(hand_landmark_filter[i]){
                    handMarkString += hand[i].x + " ";
                    handMarkString += hand[i].y + " ";
                    handMarkString += hand[i].z + " ";
                }
            }       
        }

        if(DATA.hand_2_landmarks.landmark){
            const hand = DATA.hand_1_landmarks.landmark;

            for(let i = 0; i < hand.length; i++){
                if(hand_landmark_filter[i]){
                    handMarkString += hand[i].x + " ";
                    handMarkString += hand[i].y + " ";
                    handMarkString += hand[i].z + " ";
                }
            }
        }
    }


    // join the pose rect and pose landmarks

    poseString = poseRectString + poseMarkString;

    // join the hand rects and hand landmarks

    handString = handRectString + handMarkString;

    // join the pose and hands

    fullBodyString = poseString + handString;

    out("/pose", poseString);
    out("/hands", handString);
    out("/fullBody", fullBodyString);
}


async function init(){
    await maxApi.outlet(`/init 1`);
}

async function out(namespace, val){
    await maxApi.outlet(`${namespace} ${val}`);
}

function setPoseRectFilter(...v){
    pose_rect_is_active = false;

    if(v.length != 5){
        return
    }

    if(!(v.reduce((a, b)=>{return a+b}))){
        return       
    }

    console.log("Set Pose Rect Filter...");
    pose_rect_filter = v;
    pose_rect_is_active = true;
}

function setPoseFilter(...v){
    pose_landmark_is_active = false;

    if(v.length != 25){
        return
    }

    if(!(v.reduce((a, b)=>{return a+b}))){
        return       
    }

    console.log("Set Pose Mark Filter...");
    pose_landmark_filter = v;
    pose_landmark_is_active = true;
}

function setHandRectFilter(...v){
    hand_rect_is_active = false;

    if(v.length != 5){
        return
    }

    if(!(v.reduce((a, b)=>{return a+b}))){ 
        return       
    }

    console.log("Set Hand Rect Filter...");
    hand_rect_filter = v;
    hand_rect_is_active = true;
}

function setHandFilter(...v){
    hand_landmark_is_active = false;

    if(v.length != 21){return}

    if(!(v.reduce((a, b)=>{return a+b}))){    
        return       
    }

    console.log("Set Hand Mark Filter...");
    hand_landmark_filter = v;
    hand_landmark_is_active = true;
}

  