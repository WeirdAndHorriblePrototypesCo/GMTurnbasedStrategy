/// @description Button Interaction

//Buy a house.
Planks=0
Food=0
Stone=0
Workers=0
if point_in_rectangle(mouse_x,mouse_y,20,40,20+sprite_get_width(Spr_House),40+sprite_get_height(Spr_House)) {
	Planks=10
	Food=7
	Stone=5
	check_costs() 
	if ShortageType != "" { exit }
	PlaceType="House"
	exit
	}
//Buy a farm.
if point_in_rectangle(mouse_x,mouse_y,20,40+130,20+sprite_get_width(Spr_House),40+sprite_get_height(Spr_House)+130) {
	Planks=5
	Workers=4
	check_costs()
	if ShortageType != "" { exit }
	PlaceType="Farm"
	exit
	}

	
//Place a building
if PlaceBuilding == 1 {
	if array_world_get(global.WorldArray,floor(mouse_x/global.GridWidth),floor(mouse_y/global.GridHeight),1) == Place {
		PlaceBuilding=0
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
		PlaceType=""
		}
	}