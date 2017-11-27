/// @description Place Building on tile

if PlaceType != "" { 
	var _LocationTile = array_world_get(global.WorldArray,floor(mouse_x/global.GridWidth),floor(mouse_y/global.GridHeight), 1)
	if  _LocationTile != 0 {
		draw_sprite(Spr_Select_Tile,1,floor(mouse_x/global.GridWidth)*global.GridWidth,floor(mouse_y/global.GridHeight)*global.GridHeight)
		}
	else {
		draw_sprite(Spr_Select_Tile,0,floor(mouse_x/global.GridWidth)*global.GridWidth,floor(mouse_y/global.GridHeight)*global.GridHeight)
		}
	}