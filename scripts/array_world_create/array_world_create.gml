var x1 = argument[0],
    y1 = argument[1],
    z1 = argument[2];

var map_array = ds_map_create();
var inner_array;
var _X = 0;
var _Y = 0;
var _Z = 0;
repeat(z1){
	repeat(x1){
		repeat(y1){
			inner_array[_X,_Y] = irandom_range(1,15); // Fill array with random values
			
			_Y+=1
			}
		
		_Y=0;
		_X+=1;
		}
	ds_map_add(map_array, _Z, inner_array);
	_X=0;
	_Z+=1;
}
_Z=0;
return map_array;