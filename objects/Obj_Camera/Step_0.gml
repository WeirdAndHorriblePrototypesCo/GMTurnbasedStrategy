/// @description Insert description here
// You can write your code in this editor
//Zoom out 
if (mouse_wheel_down()){
viewWidth+=128;
viewHeight+=96;
}
//Zoom in, but not too far
if (mouse_wheel_up() && viewWidth > 640){
viewWidth-=128;
viewHeight-=96;
}
//Reset view
if (mouse_check_button(mb_middle)){
viewWidth=640;
viewHeight=480;
}
//Move camera around the map
if (keyboard_check(vk_up) || keyboard_check(ord("W"))){
	
	if(keyboard_check(vk_shift)){
	y-=camera_speed*5;
	}
	else{
	y-=camera_speed;
	}
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))){
	if(keyboard_check(vk_shift)){
	x-=camera_speed*5;
	}
	else{
	x-=camera_speed;
	}
}
if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
	if(keyboard_check(vk_shift)){
	y+=camera_speed*5;
	}
	else{
	y+=camera_speed;
	}
}
if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
	if(keyboard_check(vk_shift)){
	x+=camera_speed*5;
	}
	else{
	x+=camera_speed;
	}
}


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(viewWidth,viewHeight,0,32000);
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);