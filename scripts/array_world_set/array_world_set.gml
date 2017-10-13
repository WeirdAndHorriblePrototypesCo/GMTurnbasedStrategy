//array_world_set(input data,target array,x location, y location, z location);
var input_data = argument[0],
	map_array = argument[1],
	x1 = argument[2],
    y1 = argument[3],
    z1 = argument[4];

var in_array = map_array[? z1];
in_array[@ x1,y1]= input_data;
