/// @description Get server data
var _TypeEvent = async_load[? "type"];

switch(_TypeEvent) {
	case network_type_data:
		var Buffer = async_load[? "buffer"];
		buffer_seek(Buffer, buffer_seek_start, 0);
		
		var _MessageId = buffer_read(Buffer,buffer_string);
		
		
		switch(_MessageId) {
			case "House":
				var _X = buffer_read(Buffer, buffer_u32)
				var _Y = buffer_read(Buffer, buffer_u32)
				var _Building = instance_create_depth(_X, _Y, -10 ,Obj_House)
                _Building.Owner = buffer_read(Buffer, buffer_string);
				break;
			case "Small Building":
				var _X = buffer_read(Buffer, buffer_u32)
				var _Y = buffer_read(Buffer, buffer_u32)
				var _Building = instance_create_depth(_X, _Y, -10 ,Obj_Production_Building)
                var _Owner = buffer_read(Buffer, buffer_string)
                var _Type = buffer_read(Buffer,buffer_string)
                _Building.Type = _Type
                _Building.Owner = _Owner
				break;
			case "Next Turn":
				script_execute(next_turn)
				break;
			case "Login Resources":
				global.Planks = buffer_read(Buffer, buffer_u32)
				global.Food = buffer_read(Buffer, buffer_u32)
				global.Stone = buffer_read(Buffer, buffer_u32)
				global.Workers = buffer_read(Buffer, buffer_u32)
				break;
            case "Resources Gained":
                if global.Username == buffer_read(Buffer,buffer_string) {
                    global.Planks=buffer_read(Buffer,buffer_u32)
                    global.Food=buffer_read(Buffer,buffer_u32)
                    global.Stone=buffer_read(Buffer,buffer_u32)
                    break;
                    }
			case "Wind Direction":
				var _Rounds = 0
				var _Direction = buffer_read(Buffer,buffer_u16);
				var _Speed = buffer_read(Buffer,buffer_u8);
				var _Strength = buffer_read(Buffer,buffer_u8)/10;
				
				repeat instance_number(Obj_Clouds) {
					var _Target = instance_find(Obj_Clouds,_Rounds)
					_Target.Direction = _Direction
					_Target.Speed = _Speed
					_Target.Strength = _Strength
					_Rounds+=1
					}
				break;
			case "Cheat, Give Planks":
                if global.Username == buffer_read(Buffer, buffer_string) {
                    global.Planks+=buffer_read(Buffer, buffer_u32)
                    }
                break;
			case "Cheat, Give Food":
                if global.Username == buffer_read(Buffer, buffer_string) {
                    global.Food+=buffer_read(Buffer, buffer_u32)
                    }
                break;
            case "Cheat, Give Stone":
                if global.Username == buffer_read(Buffer, buffer_string) {
                    global.Stone+=buffer_read(Buffer, buffer_u32)
                    }
                break;
            case "Cheat, Give Workers":
                if global.Username == buffer_read(Buffer, buffer_string) {
                    global.Workers+=buffer_read(Buffer, buffer_u32)
                    }
                break;
			}
		break;
	}