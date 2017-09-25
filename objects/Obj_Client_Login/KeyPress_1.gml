 /// @description Take imput
if keyboard_lastkey == 13 {
	var Name = ""
	var Passw= ""
	var _Rounds = 0
	repeat ds_list_size(Letters1) { 
		Name+=string(ds_list_find_value(Letters1,_Rounds))
		_Rounds+=1
		}
	
	_Rounds = 0
	repeat ds_list_size(Letters2) {
		Passw+=string(ds_list_find_value(Letters2,_Rounds))
		_Rounds+=1
		}
	var _Size = 1024;
	var _Type = buffer_fixed;
	var _Alignment = 1;
	Buffer = buffer_create(_Size,_Type,_Alignment)
	
	buffer_seek(Buffer, buffer_seek_start, 0);
	buffer_write(Buffer, buffer_string, "Login");
	buffer_write(Buffer, buffer_string, Name);
	buffer_write(Buffer, buffer_string, Passw);
	buffer_write(Buffer, buffer_u32, global.PlayerNumber)
	network_send_packet(Socket, Buffer, buffer_tell(Buffer));
	exit
	}
	
if Button1 == 1 {
	if keyboard_lastkey == 9 {
		Button1 = 0
		Button2 = 1
		exit
		}
	if keyboard_lastkey == 160 || keyboard_lastkey == 161 || keyboard_lastkey == 13 { exit; }
	if keyboard_lastkey == 8 {
		ds_list_delete(Letters1,ds_list_size(Letters1)-1)
		exit
		}
	ds_list_add(Letters1,keyboard_lastchar)
	}
if Button2 == 1 {
	if keyboard_lastkey == 9 {
		Button1 = 1
		Button2 = 0
		exit
		}
	if keyboard_lastkey == 160 || keyboard_lastkey == 161 || keyboard_lastkey == 13 { exit; }
	if keyboard_lastkey == 8 {
		ds_list_delete(Letters2,ds_list_size(Letters2)-1)
		exit
		}
	ds_list_add(Letters2,keyboard_lastchar)
	}

