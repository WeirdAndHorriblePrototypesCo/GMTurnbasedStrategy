//array_3d_create(x length, y length, z length);
var x1 = argument[0],
    y1 = argument[1],
    z1 = argument[2];


var _seed = global.WorldSeed;

var outer_array;
var inner_array
var _X = 0;
var _Y = 0;
var _Z = 0;


repeat(x1){
	repeat(y1){	
		
		repeat(z1){		
			
			inner_array[_Z] = irandom_range(1,15);
			_Z+=1
			}
		_Z=0;
		_Y+=1;
		outer_array[_X,_Y] = inner_array;
		}
	_Y=0;
	_X+=1;
}
_X=0;
global.WorldSeed = _seed;
return outer_array;