/// @description Get all tiles.

// ONLY CREATE ME AFTER YOU HAVE GOTTEN ALL THE DATA FROM THE SERVER
// AND SET ALL THE CORRECT VARIABLES READY. OTHERWISE ILL LAG YA ASS OFF / CRASH.
// Thou has been warned.


//Some debug info :) #Stats #Awesome!
TilesCreated = 0;
BuildingsPlaced = 0;

//useful vars


//Temp values for the repeat section down below.
var _TerrainType;
var _X = 0;
var _Y = 0; 



//Init Tilemap
var tileLayer = layer_create(10);
var tileMap = layer_tilemap_create(tileLayer,0,0,Ts_Ground,global.WorldWidth,global.WorldHeight);



//Magic numbers are in use now. Find a way to get the correct size later.

repeat (global.WorldWidth) {
	repeat (global.WorldHeight) {
		
		_TerrainType = array_world_get(global.WorldArray,_X,_Y,1);
		
		//Populate grid with tilemap
		tilemap_set_at_pixel(tileMap,_TerrainType,_X*global.GridWidth,_Y*global.GridHeight);
		TilesCreated+=1
		_Y+=1
		}
	_X+=1
	_Y=0
	}
//Draw the tilemap after populating
draw_tilemap(tileMap,0,0);


show_debug_message(TilesCreated)
alarm[0]=10
