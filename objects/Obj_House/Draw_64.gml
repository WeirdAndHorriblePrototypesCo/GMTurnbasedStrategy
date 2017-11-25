/// @description Draw buttons

//Button locations:
WportDraw = view_wport[view_current]
HportDraw = view_hport[view_current]

if LocalMenuOpen == 1 {
    draw_sprite_stretched(sprite_index,image_index,WportDraw-700,HportDraw-195,sprite_width/1.75,sprite_height/1.75)
    draw_set_font(Fn_Info_Medium)
    draw_set_color(c_white)
    draw_text(WportDraw-655,HportDraw-190,"House")
    
    if sprite_index=Spr_House_T1 { draw_text(WportDraw-480,HportDraw-190,"Produces 1 wood each turn") }
    if sprite_index=Spr_House_T2 { draw_text(WportDraw-480,HportDraw-190,"Produces 3 wood each turn") }
    
    draw_sprite_stretched(Spr_Menu_Button,0,WportDraw-350,HportDraw-70,47,47)
    draw_sprite_stretched(Spr_Menu_Top,1,WportDraw-350,HportDraw-70,47,47) //Quit button
    
    draw_sprite_stretched(Spr_Menu_Button,0,WportDraw-700,HportDraw-70,47,47) 
    draw_sprite_stretched(Spr_Menu_Top,2,WportDraw-700,HportDraw-70,47,47) //Upgrade button
    }

if LocalMenuOpen == 1 && (point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),WportDraw-700,HportDraw-70,WportDraw-650,HportDraw-30)) {
    if sprite_index=Spr_House_T1 {
        Target.PlankCost = 20
        Target.FoodCost = 2
        Target.StoneCost = 5
        Target.WorkerCost = 1
        if mouse_check_button(mb_left) {
            Target.UpgradeType = "House_T2"
            Target.UpTarget = id
            Target.Upgrade = 1
            LocalMenuOpen=0
            global.MenuOpen=-1
    		exit
    		}
        }
    }
    
if LocalMenuOpen == 1 && mouse_check_button(mb_left) {
	if (point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),WportDraw-350,HportDraw-70,WportDraw-300,HportDraw-30)) {
		global.MenuOpen = -1
		LocalMenuOpen=0
		exit
		}
	}