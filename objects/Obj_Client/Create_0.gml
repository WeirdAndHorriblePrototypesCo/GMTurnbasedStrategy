/// @description Initialize the client

var Type = network_socket_tcp;
var Ip = "127.0.0.1"; //The server's ip needs to be filled in here.
var Port = 8000;

//Create a socket to send to the server.
Socket = network_create_socket(Type);
Connection = network_connect(Socket,Ip,Port);

//Create buffer to send data
var Size = 1024;
var Type = buffer_fixed;
var Alignment = 1;
Buffer = buffer_create(Size,Type,Alignment)