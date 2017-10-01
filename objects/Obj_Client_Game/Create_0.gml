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

//Global list of names.
global.RandomNames = ds_list_create()
ini_open(working_directory+"RandomNames.txt")
var _Rounds = 0
var _String = ""
_String=string("N")+string(_Rounds)
repeat 1000 {
	ds_list_add(global.RandomNames,ini_read_string("Names",_String,"Error!"))
	show_debug_message(ini_read_string("Names",_String,"Error!"))
	_Rounds+=1
	_String=string("N")+string(_Rounds)
	if !ini_key_exists("Names",_String) {
		show_debug_message(_Rounds)
		break;
		}
	} 
ini_close()