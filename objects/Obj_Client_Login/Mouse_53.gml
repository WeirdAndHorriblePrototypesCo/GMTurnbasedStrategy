/// @description Button responces.

//Login == 0
if (point_in_rectangle(mouse_x,mouse_y,room_width/2-100,room_height/2-30,room_width/2+60,room_height/2-5)) && Login == 0 {
	script_execute(login_connect)
	}

//If you username is too short, deny it from being chosen.
if (point_in_circle(mouse_x,mouse_y,room_width/2-20,room_height/2+80,25)) && Login == 2 && ds_list_size(Letters3) < 4 {
	DrawError2 = 60
	exit
	}

//Login == 1
if Login == 1 {
	if (point_in_rectangle(mouse_x,mouse_y,room_width/2-100,room_height/2-30,room_width/2+60,room_height/2-5)) {
		Button1 = 1
		Button2 = 0
		}
	if (point_in_rectangle(mouse_x,mouse_y,room_width/2-100,room_height/2+10,room_width/2+60,room_height/2+35)) {
		Button2 = 1
		Button1 = 0
		}
	}
//Login == 2
if Login == 2 {
	if (point_in_rectangle(mouse_x,mouse_y,room_width/2-100,room_height/2-30,room_width/2+60,room_height/2-5)) {
		Button3 = 1
		Button4 = 0
		}
	if (point_in_rectangle(mouse_x,mouse_y,room_width/2-100,room_height/2+10,room_width/2+60,room_height/2+35)) {
		Button3 = 0
		Button4 = 1
		}
	}
//Login == 3
if Login == 3 {
	if (point_in_rectangle(mouse_x,mouse_y,room_width/2-100,room_height/2-30,room_width/2+60,room_height/2-5)) {
		Login = 1
		}
	if (point_in_rectangle(mouse_x,mouse_y,room_width/2-100,room_height/2+10,room_width/2+60,room_height/2+35)) {
		Login = 2
		}
	}

//Connect to the chosen server / ip
if Login == 4 {
	if (point_in_circle(mouse_x,mouse_y,room_width/2-20,room_height/2+80,25)) {
		script_execute(login_connect)
		exit
		}
	}
	
//Send your Username and Passw to the server to verify & Login.
if (point_in_circle(mouse_x,mouse_y,room_width/2-20,room_height/2+80,25)) {
	if Login == 1 || Login == 2 {
		script_execute(login_password)
		}
	}