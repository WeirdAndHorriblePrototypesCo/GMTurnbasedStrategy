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
        if keyboard_check(vk_shift) {
            _Shift = PlaceType
            }
        /////////////////////////////    HOUSE       ///////////////////////////////////////////
        check_costs() //<<<<< THE COSTS FOR THE BUILDING <<<<
        if ShortageType != "" { 
            PlaceType = ""
            exit
            }
        var _Rounds = 0
        repeat global.AmountOfBuildings {
            if ds_map_find_value(global.Buildings[_Rounds],"Name") == PlaceType {
                var _String = global.Buildings[_Rounds]
                var _Argument2 = ds_map_find_value(_String,"LayerNumber")
                }
            _Rounds+=1
            }
		place_small_building(PlaceType, _Argument2)
		PlaceType=_Shift
        //}
	}



