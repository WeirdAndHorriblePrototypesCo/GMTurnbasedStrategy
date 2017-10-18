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

// Get mouse position when holding for mouse camera drag
if mouse_check_button_pressed(mb_left){
Xmouse = mouse_x;
Ymouse = mouse_y;
}

// Move camera according to mouse drag
if mouse_check_button(mb_left) {	//The jank is real, this messes up the rendering of the tiles big time. It is nice to use though, so fuck it.
	 
	x = Xmouse - (mouse_x - x);
	y = Ymouse - (mouse_y - x);
	/*
	_Xdiff = mouse_x - Xmouse;
	_Ydiff = mouse_y - Ymouse;
	x = x-_Xdiff;
	y = y-_Ydiff;
	*/
	}

//Move camera around the map according to camera_speed and keypresses. Speed up with shift.
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

//Make sure the view doesn't go outside the room.

//x= max(x, viewWidth/2);
//y= max(y, viewHeight/2);
//clamp(x, 0, room_width - viewWidth);
//clamp(y, 0, room_height - viewHeight);

// Apply the changed x and y values to the camera matrix
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
// Apply the changed viewWidth and viewHeight variables to the camera matrix
var pm = matrix_build_projection_ortho(viewWidth,viewHeight,0,32000);
//Apply both matrices
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);