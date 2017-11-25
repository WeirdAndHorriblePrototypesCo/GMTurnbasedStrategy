/// @description Open Menu.

if global.MenuOpen == -1 {
	LocalMenuOpen=1
	global.MenuOpen=id
	}
else {
    global.MenuOpen.LocalMenuOpen=0
    LocalMenuOpen=1
    global.MenuOpen=id
    }