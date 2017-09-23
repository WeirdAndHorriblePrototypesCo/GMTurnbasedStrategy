/// @description Insert description here
// You can write your code in this editor
X=0
Y=0
if keyboard_check(ord("w")) {
	X=5
	}
if keyboard_check(ord("d")) {
	X=-5
	}
if keyboard_check(ord("a")) {
	Y=-5
	}
if keyboard_check(ord("d")) {
	Y=5
	}

camera_set_view_pos(Camera,x+X,y+Y)