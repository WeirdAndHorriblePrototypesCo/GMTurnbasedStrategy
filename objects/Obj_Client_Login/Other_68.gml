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
                var _ServerVersion = buffer_read(Buffer, buffer_string)
                if Version != _ServerVersion {
                    network_destroy(global.Socket)
                    Login = 4
                    DrawError4 = 120
                    }
				break;
			case "Error":
				DrawError = 120
				break;
			case "Login Success":
                if buffer_read(Buffer, buffer_string) == Username {
                    if buffer_read(Buffer, buffer_string) == Password {
                        if global.LoggedIn = 1 {
        					break;
        					}
        				global.LoggedIn = 1
                        global.Username = Username
        				room_goto_next()
                        }
                    }
				break;
			case "User already login":
				DrawError2 = 120
				break;
            case "Username Taken":
                var _String = buffer_read(Buffer, buffer_string)
                if _String == Username {
                    DrawError3 = 120
                    }
                break;
			}
	}