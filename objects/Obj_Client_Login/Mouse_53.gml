/// @description Button responces.

//Login == 0
if (point_in_rectangle(mouse_x,mouse_y,room_width/2-100,room_height/2-30,room_width/2+60,room_height/2-5)) && Login == 0 {
	var _Type = network_socket_tcp;
	var _Ip = "127.0.0.1"; //The server's ip needs to be filled in here.
	var _Port = 8000;

	//Create a socket to send to the server.
	Socket = network_create_socket(_Type);
	Connection = network_connect(Socket,_Ip,_Port);

	//Create buffer to send data
	var _Size = 1024;
	var _Type = buffer_fixed;
	var _Alignment = 1;
	Buffer = buffer_create(_Size,_Type,_Alignment)
	
	//Results from trying to connect.
	if Connection < 0 { Login=0 }
	else { Login=1 }
	}

//Login == 1
if (point_in_rectangle(mouse_x,mouse_y,room_width/2-100,room_height/2-30,room_width/2+60,room_height/2-5)) && Login == 1 {
	Button1 = 1
	Button2 = 0
	}
if (point_in_rectangle(mouse_x,mouse_y,room_width/2-100,room_height/2+10,room_width/2+60,room_height/2+35)) && Login == 1 {
	Button2 = 1
	Button1 = 0
	}
if (point_in_circle(mouse_x,mouse_y,room_width/2-20,room_height/2+80,25)) {
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
	
	buffer_seek(Buffer, buffer_seek_start, 0);
	buffer_write(Buffer, buffer_string, "Login");
	buffer_write(Buffer, buffer_string, Name);
	buffer_write(Buffer, buffer_string, Passw);
	network_send_packet(Socket, Buffer, buffer_tell(Buffer));
	show_debug_message(Name)
	show_debug_message(Passw)
	}