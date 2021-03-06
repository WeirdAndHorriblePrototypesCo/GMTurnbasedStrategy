/// @description Draw a button

draw_set_font(noone)
if DrawError != 0 {
	DrawError-=1
	if Login == 1 {
		draw_text_color(room_width/2-140,room_height/2-60,"Wrong username or password",c_red,c_red,c_red,c_red,1) 
		}
	}
if DrawError2 != 0 {
	DrawError2-=1
	if Login == 1 {
		draw_text_color(room_width/2-140,room_height/2-60,"That user is already login",c_red,c_red,c_red,c_red,1) 
		}
	if Login == 2 {
		draw_text_color(room_width/2-140,room_height/2-60,"That username is too short!",c_red,c_red,c_red,c_red,1) 
		}
	}
if DrawError3 != 0 {
    DrawError3-=1
    if Login == 2 || Login == 3 {
        draw_text_color(room_width/2-140,room_height/2-60,"That name is already taken!",c_red,c_red,c_red,c_red,1) 
		}
    }
if DrawError4 != 0 {
    DrawError4-=1
    if Login == 4 {
        draw_text_color(room_width/2-90,room_height/2-60,"Outdated client",c_red,c_red,c_red,c_red,1) 
        draw_text_color(room_width/2-110,room_height/2-40,"please update first!",c_red,c_red,c_red,c_red,1)
        }
    }
if Login == 0 {
    draw_set_color(c_white)
	draw_button(room_width/2-100,room_height/2-30,room_width/2+60,room_height/2-5,1)
    draw_button(room_width/2-100,room_height/2,room_width/2+60,room_height/2+25,1)
	draw_text_color(room_width/2-155,room_height/2-80,"We are unable to connect you!",c_red,c_red,c_red,c_red,1)
	draw_text_color(room_width/2-175,room_height/2-55,"Please press the button to try again.",c_red,c_red,c_red,c_red,1)
	draw_text_color(room_width/2-40,room_height/2-30,"Retry",c_black,c_black,c_black,c_black,1)
    draw_text_color(room_width/2-75,room_height/2,"Different IP",c_black,c_black,c_black,c_black,1)
	}

if Login == 1 {
//Start Login 1
	draw_set_color(c_white)
	if DrawError == 0 && DrawError2 == 0 { draw_text_color(room_width/2-80,room_height/2-60," Please login",c_white,c_white,c_white,c_white,1) }
	//Draw the login "buttons"
	draw_button(room_width/2-100,room_height/2-30,room_width/2+60,room_height/2-5,1)
	draw_button(room_width/2-100,room_height/2+10,room_width/2+60,room_height/2+35,1)
	//Draw the "arrow" to start the game.
	draw_circle(room_width/2-20,room_height/2+80,25,0)
	draw_set_color(c_black)
	draw_arrow(room_width/2-35,room_height/2+80,room_width/2,room_height/2+80,70)
	
	var _Rounds = 0
	var _LetterRounds = 0
	if ds_list_size(Letters1) > 15 { _LetterRounds += ds_list_size(Letters1)-15 }
	repeat ds_list_size(Letters1) {
		if ds_list_find_value(Letters1,_LetterRounds) == undefined { break; }
		draw_text_color(room_width/2-95+10*_Rounds,room_height/2-25,ds_list_find_value(Letters1,_LetterRounds),c_green,c_green,c_green,c_green,1)
		_LetterRounds+=1
		_Rounds+=1
		}
	if Button1 == 1 {
		draw_text_color(room_width/2-90+10*_Rounds,room_height/2-25,"<~",c_green,c_green,c_green,c_green,1)
		}
	
	var _Rounds = 0
	repeat ds_list_size(Letters2) {
		if _Rounds < 15 {
			draw_text_color(room_width/2-95+10*_Rounds,room_height/2+15,ds_list_find_value(Nonsense,_Rounds),c_green,c_green,c_green,c_green,1)
			_Rounds+=1
			}
		}
	if Button2 == 1 {
		draw_text_color(room_width/2-90+10*_Rounds,room_height/2+15,"<~",c_green,c_green,c_green,c_green,1)
		}
//End Login 1
	}
		
if Login == 2 {
//Start Login 2
	draw_set_color(c_white)
	if DrawError == 0 && DrawError2 == 0 { draw_text_color(room_width/2-120,room_height/2-60,"Select a name and login",c_white,c_white,c_white,c_white,1) }
	draw_button(room_width/2-100,room_height/2-30,room_width/2+60,room_height/2-5,1)
	draw_button(room_width/2-100,room_height/2+10,room_width/2+60,room_height/2+35,1)
	draw_circle(room_width/2-20,room_height/2+80,25,0)
	draw_set_color(c_black)
	draw_arrow(room_width/2-35,room_height/2+80,room_width/2,room_height/2+80,70)
	
	var _Rounds = 0
	var _LetterRounds = 0
	if ds_list_size(Letters3) > 15 { _LetterRounds += ds_list_size(Letters3)-15 }
	repeat ds_list_size(Letters3) {
		if ds_list_find_value(Letters3,_LetterRounds) == undefined { break; }
		draw_text_color(room_width/2-95+10*_Rounds,room_height/2-25,ds_list_find_value(Letters3,_LetterRounds),c_green,c_green,c_green,c_green,1)
		_LetterRounds+=1
		_Rounds+=1
		}
	if Button3 == 1 {
		draw_text_color(room_width/2-90+10*_Rounds,room_height/2-25,"<~",c_green,c_green,c_green,c_green,1)
		}
	
	var _Rounds = 0
	repeat ds_list_size(Letters4) {
		if _Rounds < 15 {
			draw_text_color(room_width/2-95+10*_Rounds,room_height/2+15,ds_list_find_value(Nonsense,_Rounds),c_green,c_green,c_green,c_green,1)
			_Rounds+=1
			}
		}
	if Button4 == 1 {
		draw_text_color(room_width/2-90+10*_Rounds,room_height/2+15,"<~",c_green,c_green,c_green,c_green,1)
		}
//End Login 2
	}

//Menu selection.
if Login == 3 {
	if CreatedAccount != 0 {
		draw_text_color(room_width/2-100,room_height/2-50," Account created!",c_green,c_green,c_green,c_green,1)
		CreatedAccount-=1
		}
	draw_button(room_width/2-100,room_height/2-30,room_width/2+60,room_height/2-5,1)
	draw_button(room_width/2-100,room_height/2+10,room_width/2+60,room_height/2+35,1)
	draw_set_color(c_black)
	draw_text(room_width/2-90,room_height/2-25,"     Login")
	draw_text(room_width/2-90,room_height/2+15," Create Account")
	}

if Login == 4 {
	draw_button(room_width/2-100,room_height/2-10,room_width/2+60,room_height/2+15,1)
    if DrawError4 == 0 {
    	draw_text(room_width/2-150,room_height/2-50,"  Please type the ip of the")
    	draw_text(room_width/2-150,room_height/2-35,"server you wish to connect to")
        }
    draw_circle(room_width/2-20,room_height/2+80,25,0)
	draw_set_color(c_black)
	draw_arrow(room_width/2-35,room_height/2+80,room_width/2,room_height/2+80,70)
	
	var _Rounds = 0
	repeat ds_list_size(Letters5) {
		if _Rounds < 15 {
			draw_text_color(room_width/2-95+10*_Rounds,room_height/2-5,ds_list_find_value(Letters5,_Rounds),c_green,c_green,c_green,c_green,1)
			_Rounds+=1
			}
		}
	if Button5 == 1 {
		draw_text_color(room_width/2-95+10*_Rounds,room_height/2-5,"<~",c_green,c_green,c_green,c_green,1)
		}
	}

//Main title
draw_set_font(Fn_Lobby)
draw_set_color(c_white)
draw_text(room_width/2-290,100,"Turn Based Strategy")
RandomNameAlpha+=ChangeNames
draw_set_alpha(RandomNameAlpha)
if RandomNameAlpha == 0 {
    ChangeNames = 0.01
    _Name1 = irandom(2)
    _Name2 = irandom(2)
    if _Name1 = 0 {_Name1 = "Merlijn"}
    if _Name1 = 1 {_Name1 = "Mart"}
    if _Name1 = 2 {_Name1 = "Jorian"}
    if _Name2 = 0 {_Name2 = "Merlijn"}
    if _Name2 = 1 {_Name2 = "Mart"}
    if _Name2 = 2 {_Name2 = "Jorian"}
    }
if RandomNameAlpha == 1 { ChangeNames=-0.01 }
draw_text(room_width/2-string_width(string(" By ")+string(_Name1)+string(" and ")+string(_Name2))/2-30,145,string(" By ")+string(_Name1)+string(" and ")+string(_Name2))
draw_set_alpha(1)