/// @description Insert description here
// You can write your code in this editor

//Shortcuts for keypresses


if (keyboard_check(vk_up) || keyboard_check(ord("W"))){
y-=camera_speed;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))){
x-=camera_speed;
}
if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
y+=camera_speed;
}
if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
x+=camera_speed;
}


/*
switch(keyboard_key){
case vk_up:
case ord("W"):
	y-=camera_speed;
	break;
case vk_left:
case ord("A"):
	x-=camera_speed;
	break;
case vk_down:
case ord("S"):
	y+=camera_speed;
	break;
case vk_right:
case ord("D"):
	x+=camera_speed;
	break;
}
*/
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);