/// @description Create a random cloud.

depth=-10000
image_index = irandom(image_number)
image_speed=0
image_alpha=0

Speed=0		//Tiles per turn
Move=0		//Is the cloud allowed to move?
Strength=0	//How dark is this cloud? (1 = full black, 0 = not visible)
Direction=0

x = irandom(room_width/global.GridWidth)*global.GridWidth
y = irandom(room_height/global.GridHeight)*global.GridHeight