/// @description draw stuff

draw_self()
if NextTurn == 1 {
	NextTurn=0
	ShowGain=60
	GainRounds=0
	}

if ShowGain > 0 {
	draw_set_color(c_white)
    draw_set_font(Fn_Info_Medium)
    if sprite_index=Spr_House_T1 { draw_text(x+sprite_width/2-10,y+sprite_height/2-GainRounds,"+1") }
    if sprite_index=Spr_House_T2 { draw_text(x+sprite_width/2-10,y+sprite_height/2-GainRounds,"+3") }
	//10 = the size of the text.
	ShowGain-=1
	GainRounds+=1
	}

if Upgrade = 1 {
    sprite_index=Spr_House_T2
    Upgrade = 0
    }