/// @description Create the grid


//Some debug info :) #Stats #Awesome!
TilesCreated = 0

//Temp values for the repeat section down below.
var _TerrainType;
var _X = 0;
var _Y = 0; 
var _id = 0;
//Create the grid (This can be deleted if we end up not using the grid 't all.
global.GroundGrid = ds_grid_create(room_width/global.GridWidth,room_height/global.GridHeight) 

//Create tiles on every "space". Dont do this too often.
repeat (room_width/global.GridWidth) {
	repeat (room_height/global.GridHeight) {
		_TerrainType = global.WorldArray[_X,_Y];
		_id = instance_create_depth(_X*global.GridWidth,_Y*global.GridHeight,1,GridObject);
		//Setting the frame to the right terrain type
		_id.image_index = _TerrainType;
		TilesCreated+=1
		_Y+=1
		}
	_X+=1
	_Y=0
	}

show_debug_message(TilesCreated)
