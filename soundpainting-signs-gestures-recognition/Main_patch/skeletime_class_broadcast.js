const maxApi = require('max-api');
const io = require("socket.io-client");
let socket = io(`https://skeleweb.herokuapp.com`);

let typeInfo = {
    type : 'class_broadcast',
    active: false
};

const handlers = {};
handlers.init = init;
handlers.broadcast_class = broadcast_class;

maxApi.addHandlers(handlers);

init();

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

function broadcast_class(classify){
    socket.emit("classificationData", classify);
}



async function init(){
    await maxApi.outlet(`/init 1`);
  }
  


