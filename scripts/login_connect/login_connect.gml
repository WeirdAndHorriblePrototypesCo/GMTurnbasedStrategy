var _Rounds = 0
var _Ip = ""
repeat ds_list_size(Letters5) {
	_Ip+=string(ds_list_find_value(Letters5,_Rounds))
	_Rounds+=1
	}

var _Type = network_socket_tcp;
var _Port = 8000;

//Create a socket to send to the server.
Socket = network_create_socket(_Type);
global.Socket = Socket
Connection = network_connect(Socket,_Ip,_Port);
	
//Create buffer to send data
var _Size = 1024;
var _Type = buffer_fixed;
var _Alignment = 1;
Buffer = buffer_create(_Size,_Type,_Alignment)

if Connection < 0 { Login=0 }
else { Login=3 }