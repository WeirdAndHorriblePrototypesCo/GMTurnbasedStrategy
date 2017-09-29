Socket = global.Socket
var _Size = 1024;
var _Type = buffer_fixed;
var _Alignment = 1;
Buffer = buffer_create(_Size,_Type,_Alignment)
buffer_seek(Buffer, buffer_seek_start, 0);
buffer_write(Buffer, buffer_string, "New Player");
network_send_packet(Socket, Buffer, buffer_tell(Buffer));

//General Client Settings
global.MenuOpen = 0