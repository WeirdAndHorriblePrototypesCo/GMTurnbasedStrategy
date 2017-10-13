var _Username = "";
var _Password = "";
var _Rounds   = 0;

if Login == 1 {
	repeat ds_list_size(Letters1) { 
		_Username+=string(ds_list_find_value(Letters1,_Rounds))
		_Rounds+=1
		}
	_Rounds = 0
	repeat ds_list_size(Letters2) {
		_Password+=string(ds_list_find_value(Letters2,_Rounds))
		_Rounds+=1
		}
	}
	
if Login == 2 {
	repeat ds_list_size(Letters3) { 
		_Username+=string(ds_list_find_value(Letters3,_Rounds))
		_Rounds+=1
		}
	_Rounds = 0
	repeat ds_list_size(Letters4) {
		_Password+=string(ds_list_find_value(Letters4,_Rounds))
		_Rounds+=1
		}
	}

var _Size = 1024;
var _Type = buffer_fixed;
var _Alignment = 1;
Buffer = buffer_create(_Size,_Type,_Alignment)

buffer_seek(Buffer, buffer_seek_start, 0);
if Login == 1 { buffer_write(Buffer, buffer_string, "Login"); }
if Login == 2 { buffer_write(Buffer, buffer_string, "Create Account"); }
buffer_write(Buffer, buffer_string, _Username);
buffer_write(Buffer, buffer_string, _Password);
buffer_write(Buffer, buffer_u32, global.PlayerNumber)
network_send_packet(Socket, Buffer, buffer_tell(Buffer));

if Login == 2 {
	Login = 3
	Button1 = 0
	Button2 = 0
	Button3 = 0
	Button4 = 0 
	}