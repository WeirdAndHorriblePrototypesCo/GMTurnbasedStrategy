//array_3d_get(target array,x location, y location, z location);
var out_array = argument[0],
	x1 = argument[1],
    y1 = argument[2],
    z1 = argument[3];

var in_array = out_array[@ x1,y1];
return in_array[@ 0,z1];
