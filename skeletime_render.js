const maxApi = require('max-api');
const io = require("socket.io-client");
let socket = io(`https://skeleweb.herokuapp.com`);

let typeInfo = {
    type : 'render',
    active: false
};

const poseConnections = [[0, 1], [1, 2], [2, 3], [3, 7], [4, 0], [5, 4], [6, 5], [8, 6], [9, 10],
                        [11, 12], [13, 11], [15, 13], [14, 12], [16, 14], [11, 23], [12, 24], [23, 24]];

let marks = [];
let pose_marks_dumped = true;

const handlers = {};
handlers.render = render;

maxApi.addHandlers(handlers);

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

socket.on("classifyData", (c) =>{
    console.log("hello");
    console.log(c);
    c = c.split(":");   
    maxApi.outlet(`/class ${c[1]}`);
});

socket.on("skeleton", (data) => {
    // console.log("received skele");
    data = JSON.parse(data);
    // console.log(JSON.stringify(data));

    //pose landmark rendering

    if(!data.pose_landmarks){
        return
    }

    if(!pose_marks_dumped){
        return
    }

    console.log("got past conditions");

    

    marks = [];
    const pose = data.pose_landmarks.poseLandmarks.landmark;

    for(let i = 0; i < poseConnections.length; i++){
        let point_a = pose[poseConnections[i][0]];
        let point_b = pose[poseConnections[i][1]];

        marks.push([point_a.x, point_a.y, point_b.x, point_b.y]);
    }

    pose_marks_dumped = false;

})

async function render(){
    console.log("render");
    let outString = "";

    for(const mark of marks){
         outString = outString + `${mark[0]} ${mark[1]} ${mark[2]} ${mark[3]} `;
    }

    outString = '/skeleton ' + outString;
    await maxApi.outlet(outString);

    pose_marks_dumped = true;
}