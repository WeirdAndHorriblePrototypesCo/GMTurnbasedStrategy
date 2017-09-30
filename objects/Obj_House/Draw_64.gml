/// @description Draw buttons

//Button locations:
WportDraw = view_wport[view_current]
HportDraw = view_hport[view_current]

if HouseButton1 = 1 {

//setup Buttons
	draw_set_alpha(0.75);
	draw_roundrect(0,0,WportDraw,HportDraw,0); //Draw screen in darker tone.
	draw_set_alpha(1);
	draw_roundrect(WportDraw-210,HportDraw-75,WportDraw-50,HportDraw-25,0); //Finish inspection button
	
//Add information.
	draw_set_color(c_white);
	draw_set_font(Fn_Info_Medium);
	if Inhabitants > 1 { draw_text(10,15,string("There are ")+string(Inhabitants)+string(" people living here.")); }
	else if Inhabitants == 1 { draw_text(10,15,string("There is ")+string(Inhabitants)+string(" person living here.")); }
	else if Inhabitants == 0 { draw_text(10,15,string("There is no one living here.")); }
	
	var _Rounds = 0
	repeat Inhabitants {
		draw_text(10,30+15*_Rounds,Inhabitant[_Rounds])
		_Rounds+=1
		}
//Add button information.
	draw_set_font(Fn_Info_Large)
	draw_text(WportDraw-200,HportDraw-60,"Finish Inspection")
	draw_set_color(c_black);
	}