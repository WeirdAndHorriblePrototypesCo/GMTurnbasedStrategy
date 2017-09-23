/// @description Insert description here
// You can write your code in this editor
//Set the grid sizes. If you change it here, you change it everywhere.
global.GridWidth  = 64
global.GridHeight = 64
global.Worldseed		= "";
global.WorldArray		= [0,0];
var WorldWidth			= room_width/global.GridWidth;
var Worldheight			= room_height/global.GridHeight;



//Initialize the array.

var _X = 0;
var _Y = 0;
repeat(WorldWidth){
	repeat(Worldheight){
		global.WorldArray[_X,_Y] = irandom(6);
		_Y+=1;
		}
	_Y=0;
	_X+=1;
}
_X=0;
	

//Initialize the rest  ------------------- ALWAYS AT THE END
instance_create_depth(0,0,1,Obj_Grid_Controller);

