/// @description Get all buildings.
var _X = 0;
var _Y = 0; 
var _BuildingNumber = 0
var _Target
repeat (global.WorldWidth) {
	repeat (global.WorldHeight) {
		
		_BuildingNumber = array_world_get(global.WorldArray,_X,_Y,2);
        
		//Populate grid with buildings
        if _BuildingNumber != 0 {
            var _Rounds = 0
            var _ObjectType = ""
            repeat global.AmountOfBuildings {
                if ds_map_find_value(global.Buildings[_Rounds],"LayerNumber") == _BuildingNumber {
                    
                    var _TargetBuilding = global.Buildings[_Rounds]
                    _ObjectType = ds_map_find_value(_TargetBuilding, "ObjectType")
                    if _ObjectType = "Obj_Production_Building" {
            		    _Target = instance_create_depth(_X*global.GridWidth, _Y*global.GridHeight, -9,Obj_Production_Building) 
                        _Target.Owner = array_world_get(global.WorldArray, _X, _Y, 4)
                        _Target.Type = ds_map_find_value(global.Buildings[_Rounds], "Name")
                        }
            		BuildingsPlaced+=1
                    break;
                    }
                _Rounds+=1
                }
            }
		_Y+=1
		}
	_X+=1
	_Y=0
	}

show_debug_message(BuildingsPlaced)
alarm[1]=10