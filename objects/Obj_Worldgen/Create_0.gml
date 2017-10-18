 ///VARIABLES
//Set the grid sizes. If you change it here, you change it everywhere.
global.GridWidth		= 64; //size of every square
global.GridHeight		= 64;
global.WorldSeed		= "Fire water burn";
global.WorldWidth		= 512;
global.WorldHeight		= 512;
global.WorldArray		= array_world_create(global.WorldWidth,global.WorldHeight,64);
room_width				= global.GridWidth * global.WorldWidth;
room_height				= global.GridHeight * global.WorldHeight;
//Setting the world seed
random_set_seed(global.WorldSeed);
//START CODE
//Initialize the array.









/*
//Old 2d array system
var _X = 0;
var _Y = 0;
repeat(global.WorldWidth){
	repeat(global.WorldHeight){
		global.WorldArray[_X,_Y] = irandom(5);
		_Y+=1;
		}
	_Y=0;
	_X+=1;
}
_X=0;
*/





	

//Initialize the rest  ------------------- ALWAYS AT THE END
instance_create_depth(0,0,1,Obj_Grid_Controller);

