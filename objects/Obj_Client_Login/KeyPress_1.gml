 /// @description Take imput
if keyboard_lastkey == 13 {
	if Login == 1 { script_execute(login_password)  }
	if Login == 4 { script_execute(login_connect) }
	exit
	}
	
if Button1 == 1 {
	if keyboard_lastkey == 9 {
		Button1 = 0
		Button2 = 1
		exit
		}
	if keyboard_lastkey == 160 || keyboard_lastkey == 161 || keyboard_lastkey == 13 { exit; }
	if keyboard_lastkey == 8 {
		ds_list_delete(Letters1,ds_list_size(Letters1)-1)
		exit
		}
	ds_list_add(Letters1,keyboard_lastchar)
	}
if Button2 == 1 {
	if keyboard_lastkey == 9 {
		Button1 = 1
		Button2 = 0
		exit
		}
	if keyboard_lastkey == 160 || keyboard_lastkey == 161 || keyboard_lastkey == 13 { exit; }
	if keyboard_lastkey == 8 {
		ds_list_delete(Letters2,ds_list_size(Letters2)-1)
		exit
		}
	ds_list_add(Letters2,keyboard_lastchar)
	}
if Button3 == 1 {
	if keyboard_lastkey == 9 {
		Button3 = 0
		Button4 = 1
		exit
		}
	if keyboard_lastkey == 160 || keyboard_lastkey == 161 || keyboard_lastkey == 13 { exit; }
	if keyboard_lastkey == 8 {
		ds_list_delete(Letters3,ds_list_size(Letters3)-1)
		exit
		}
	ds_list_add(Letters3,keyboard_lastchar)
	}
if Button4 == 1 {
	if keyboard_lastkey == 9 {
		Button3 = 1
		Button4 = 0
		exit
		}
	if keyboard_lastkey == 160 || keyboard_lastkey == 161 || keyboard_lastkey == 13 { exit; }
	if keyboard_lastkey == 8 {
		ds_list_delete(Letters4,ds_list_size(Letters4)-1)
		exit
		}
	ds_list_add(Letters4,keyboard_lastchar)
	}
if Button5 == 1 {
	if keyboard_lastkey == 9 {
		exit
		}
	if keyboard_lastkey == 160 || keyboard_lastkey == 161 || keyboard_lastkey == 13 { exit; }
	if keyboard_lastkey == 8 {
		ds_list_delete(Letters5,ds_list_size(Letters5)-1)
		exit
		}
	ds_list_add(Letters5,keyboard_lastchar)
	}