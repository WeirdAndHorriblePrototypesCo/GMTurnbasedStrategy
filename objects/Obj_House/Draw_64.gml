/// @description Draw buttons

//Button locations:
WportDraw = view_wport[view_current]
HportDraw = view_hport[view_current]

if HouseButton1 == 1 {
    draw_sprite_stretched(sprite_index,image_index,WportDraw-300,HportDraw-150,sprite_width/0.5,sprite_height/0.5)
    show_message("works")
    }