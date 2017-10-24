/// @description Button Interaction

////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////// PLACE   A   BUILDING ////////////////////////////////////////////
if PlaceType != "" {
	//if array_3d_get(global.WorldArray,floor(mouse_x/global.GridWidth),floor(mouse_y/global.GridHeight),1) == Place {
        ////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////////////// BUILDING STUFF ///////////////////////////////////////////
        Planks=0
        Food=0
        Stone=0
        Workers=0
        
        // If you keep shift pressed, you can place multiple buildings.
        var _Shift = ""
        show_debug_message(keyboard_check(vk_shift))
        if keyboard_check(vk_shift) {
            _Shift = PlaceType
            }
        /////////////////////////////    HOUSE       ///////////////////////////////////////////
        check_costs()
        if ShortageType != "" { 
            PlaceType = ""
            exit
            }
		switch PlaceType {
			case "House":
				//array_3d_set(2,global.WorldArray,floor(mouse_x/global.GridWidth),floor(mouse_y/global.GridHeight),Place)
				place_house()
				break;
			case "Farm":
				//array_3d_set(3,global.WorldArray,floor(mouse_x/global.GridWidth),floor(mouse_y/global.GridHeight),Place)
				place_farm()
				break;
            case "Mine":
                //array_3d_set(3,global.WorldArray,floor(mouse_x/global.GridWidth),floor(mouse_y/global.GridHeight),Place)
                place_mine()
                break;
            case "Lumberjack":
                //array_3d_set(3,global.WorldArray,floor(mouse_x/global.GridWidth),floor(mouse_y/global.GridHeight),Place)
                place_lumberjack()
                break;
            case "Windmill":
                //Takes 4 fcking spaces! o.O
                place_windmill()
                break;
			}
		PlaceType=_Shift
        //}
	}



