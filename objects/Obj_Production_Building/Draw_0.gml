/// @description draw stuff

if sprite_index != -1 { draw_self() }
if NextTurn == 1 {
	NextTurn=0
    Loading+=1
    if Loading == MaxLoading || MaxLoading == 0 {
        ShowGain=60
        GainRounds=0
        Loading=0
        }
	}

if ShowGain > 0 {
	draw_set_color(c_white)
    draw_set_font(Fn_Info_Medium)
	draw_text(x+sprite_width/2-10,y+sprite_height/2-GainRounds,string("+")+string(ResourceAmount))
	//10 = the size of the text.
	ShowGain-=1
	GainRounds+=1
	}


if Loading != 0 {
    if global.LoadingVisible == 1 {
        draw_sprite(Spr_Loading,floor(sprite_get_number(Spr_Loading)/MaxLoading*Loading), x, y)
        }
    if global.LoadingVisible == 2 {
        draw_sprite_stretched(Spr_Loading,floor(sprite_get_number(Spr_Loading)/MaxLoading*Loading), x+sprite_get_width(Spr_Loading)/2, y-12,sprite_get_width(Spr_Loading)/2,sprite_get_height(Spr_Loading)/2)
        }
    }
    
