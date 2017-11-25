/// @description Get server data

//Server sends data to the player! >.<
var _TypeEvent = async_load[? "type"];

switch(_TypeEvent) {
	case network_type_data:
		var Buffer = async_load[? "buffer"];
		buffer_seek(Buffer, buffer_seek_start, 0);
		
		var _MessageId = buffer_read(Buffer,buffer_string);
		
		show_debug_message(_MessageId)
		switch(_MessageId) {
			case "House":
				var _X = buffer_read(Buffer, buffer_u32)
				var _Y = buffer_read(Buffer, buffer_u32)
				var _Building = instance_create_depth(_X, _Y, -9 ,Obj_House)
                _Building.Owner = buffer_read(Buffer, buffer_string);
				break;
			case "Small Building":
				var _X = buffer_read(Buffer, buffer_u32)
				var _Y = buffer_read(Buffer, buffer_u32)
                var _Owner = buffer_read(Buffer, buffer_string)
                var _Type = buffer_read(Buffer,buffer_string)
                var _LayerNumber = buffer_read(Buffer, buffer_u32)
                
                var _Building = instance_create_depth(_X, _Y, -9 ,Obj_Production_Building)
                
                array_world_set(_LayerNumber, global.WorldArray, _X, _Y, 3)
                array_world_set(_Owner, global.WorldArray, _X, _Y, 4)
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
                    global.Workers=buffer_read(Buffer,buffer_u32)
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
            case "Terrain Map":
                var _Manager = instance_find(Obj_Resource_Manager, 0)
                _Manager.LoadMenu=0
                if global.Username == buffer_read(Buffer, buffer_string) {
                    global.GridWidth    = buffer_read(Buffer, buffer_u32)
                    global.GridHeight   = buffer_read(Buffer, buffer_u32)
                    global.GridDepth    = buffer_read(Buffer, buffer_u32)
                    global.WorldHeight  = buffer_read(Buffer, buffer_u32)
                    global.WorldWidth   = buffer_read(Buffer, buffer_u32)
                    global.WorldArray   = array_world_create(global.WorldWidth,global.WorldHeight,global.GridDepth);
                    room_width	        = global.GridWidth * global.WorldWidth;
                    room_height	        = global.GridHeight * global.WorldHeight;
                    var _X = 0
                    var _Y = 0
                    var _Z = 0
                    var _Target = ""
                    repeat global.GridDepth {
                        repeat global.GridHeight {
                            repeat global.GridWidth {
                                _Target = buffer_read(Buffer, buffer_u32)
                                array_world_set(_Target, global.WorldArray, _X, _Y, _Z)
                                _X+=1
                                }
                            _Y+=1
                            _X=0
                            }
                        _Z+=1
                        _X=0
                        _Y=0
                        }
                    show_debug_message("Job's done!")
                    instance_create_depth(0,0,0,Obj_Grid_Controller)
                    }
                else {
                    _Manager.LoadMenu=1
                    }
                break;
			}
		break;
	}