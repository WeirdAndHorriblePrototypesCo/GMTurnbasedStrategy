/// @description Take imput

if Button1 == 1 {
	if keyboard_lastkey == 160 || keyboard_lastkey == 161 { exit; }
	if keyboard_lastkey == 8 or keyboard_lastkey == 13 {
		ds_list_delete(Letters1,ds_list_size(Letters1)-1)
		exit
		}
	ds_list_add(Letters1,keyboard_lastchar)
	}
if Button2 == 1 {
	if keyboard_lastkey == 160 || keyboard_lastkey == 161 { exit; }
	if keyboard_lastkey == 8 or keyboard_lastkey == 13 {
		ds_list_delete(Letters2,ds_list_size(Letters2)-1)
		exit
		}
	ds_list_add(Letters2,keyboard_lastchar)
	}