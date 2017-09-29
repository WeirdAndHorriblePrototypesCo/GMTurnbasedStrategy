/// @description close menu again.

if HouseButton1 == 1 {
	if (point_in_rectangle(mouse_x,mouse_y,Wport-210,Hport-75,Wport-50,Hport-25)) {
		global.MenuOpen = 0
		HouseButton1=0
		exit
		}
	}