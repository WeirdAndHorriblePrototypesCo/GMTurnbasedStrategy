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
				instance_create_depth(_X, _Y, -10 ,Obj_House)
				break;
			case "Small Building":
				var _X = buffer_read(Buffer, buffer_u32)
				var _Y = buffer_read(Buffer, buffer_u32)
				var _Building = instance_create_depth(_X, _Y, -10 ,Obj_Production_Building)
                var _Type = buffer_read(Buffer,buffer_string)
                _Building.Type = _Type
				break;
			case "Next Turn":
				script_execute(next_turn)
				break;
			case "Login Resources":
				global.Planks = buffer_read(Buffer, buffer_u16)
				global.Food = buffer_read(Buffer, buffer_u16)
				global.Stone = buffer_read(Buffer, buffer_u16)
				global.Workers = buffer_read(Buffer, buffer_u16)
				break;
            case "Resources Gained":
                if global.Username == buffer_read(Buffer,buffer_string) {
                    global.Planks=buffer_read(Buffer,buffer_u16)
                    global.Food=buffer_read(Buffer,buffer_u16)
                    global.Stone=buffer_read(Buffer,buffer_u16)
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
				
				
			}
		break;
	}