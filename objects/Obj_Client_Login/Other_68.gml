// @description Get server data
var _TypeEvent = async_load[? "type"];

switch(_TypeEvent) {
	case network_type_data:
		var Buffer = async_load[? "buffer"];
		buffer_seek(Buffer, buffer_seek_start, 0);
		
		var _MessageId = buffer_read(Buffer,buffer_string);
		switch(_MessageId) {
			case "Player Number":
				global.PlayerNumber = buffer_read(Buffer,buffer_u32)
				break;
			case "Error":
				DrawError = 120
				break;
			case "Login Success":
				if global.LoggedIn = 1 {
					break;
					}
				global.LoggedIn = 1
				room_goto_next()
				break;
			case "User already login":
				DrawError2 = 120
				break;
			}
	}