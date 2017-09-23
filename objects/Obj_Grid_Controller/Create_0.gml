/// @description Create the grid

//Some debug info :) #Stats #Awesome!
TilesCreated = 0

//Set the grid sizes. If you change it here, you change it everywhere.
global.GridWidth  = 64
global.GridHeight = 64

//Temp values for the repeat section down below.
var X=0
var Y=0 

//Create the grid (This can be deleted if we end up not using the grid 't all.
global.GroundGrid = ds_grid_create(room_width/global.GridWidth,room_height/global.GridHeight) 

//Create tiles on every "space". Dont do this too often.
repeat (room_width/global.GridWidth) {
	repeat (room_height/global.GridHeight) {
		instance_create_depth(X*global.GridWidth,Y*global.GridHeight,1,GridObject)
		TilesCreated+=1
		Y+=1
		}
	X+=1
	Y=0
	}

show_debug_message(TilesCreated)