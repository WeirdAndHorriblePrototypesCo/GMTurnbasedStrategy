/// @description Start trying to connect.

var _Type = network_socket_tcp;
var _Ip = "127.0.0.1"; //The server's ip needs to be filled in here.
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

//Button settings.
Button1 = 0
Button2 = 0
Button3 = 0
Button4 = 0
Letters1 = ds_list_create()
Letters2 = ds_list_create()
Letters3 = ds_list_create()
Letters4 = ds_list_create()
Nonsense = ds_list_create()
var X = irandom(2)
if X = 0 { ds_list_add(Nonsense,"M","O","O","O","O","O","V","E","A","L","O","N","G","!","!") }
if X = 1 { ds_list_add(Nonsense,"M","U","R","L","O","C","S","L","O","V","E","F","I","S","H") }
if X = 2 { ds_list_add(Nonsense,"T","O","O","L","O","N","G","P","A","S","S","W","O","R","D") }

//Draw settings
DrawError = 0 
CreatedAccount = 0
