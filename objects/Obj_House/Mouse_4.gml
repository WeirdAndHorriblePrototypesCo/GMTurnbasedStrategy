/// @description Show house information

if global.MenuOpen == 0 && mouse_y <= view_yport[view_current]+view_hport[view_current]-200 {
	HouseButton1=1
	global.MenuOpen=1
	}