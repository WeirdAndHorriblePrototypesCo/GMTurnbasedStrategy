/// @description Draw relative to screen

var ViewW = view_wport[view_current];
var ViewH = view_hport[view_current];

if Menu = "Building Selection" {
	//Draw the "black background"
	draw_set_color(c_black);
	draw_button(0,0,200,ViewH/2,1);

	//Set the fonts.
	draw_set_font(Fn_Info_Medium)
	draw_set_color(c_white)

	//house
	draw_sprite(Spr_House,0,20,40);
	draw_text(40+sprite_get_width(Spr_House),40,"Cost:\n"+"10 Planks,\n"+"5 Stone,\n"+"7 Food")

	//farm
	draw_sprite(Spr_Farm,0,20,40+130); //130 == the "House" plus a little extra.
	draw_text(40+sprite_get_width(Spr_Farm),40+130,"Cost:\n"+"5 Planks\n"+"4 Workers")
	}
if Menu = "Resources" {
	//Draw the "black background"
	draw_set_color(c_black);
	draw_button(0,0,200,ViewH/2,1);
	
	//Set the fonts.
	draw_set_font(Fn_Info_Medium)
	draw_set_color(c_white)
	
	//Draw resources
	draw_text(40,25,string("Resources :"))
	draw_text(40,40,string("Planks : ")+string(global.Planks))
	draw_text(40,55,string("Food : ")+string(global.Food))
	draw_text(40,70,string("Stone : ")+string(global.Stone))
	draw_text(40,85,string("Workers : ")+string(global.Workers))
	}

if NotEnough != 0 {
    var _String = string("Not enough ")+string(ShortageType)
    draw_set_color(c_black)
    draw_rectangle(mouse_x-(string_width(_String)/2+10),mouse_y-30,mouse_x+(string_width(_String)/2+10),mouse_y+5,0)
    draw_set_font(Fn_Info_Medium)
	draw_set_color(c_white)
	draw_text(mouse_x-string_width(_String)/2,mouse_y-20,_String)
	NotEnough-=1
	}

//Draw Selected building
switch PlaceType {
	case "House":
		draw_sprite(Spr_House,0,mouse_x-sprite_get_width(Spr_House)/2,mouse_y-sprite_get_height(Spr_House)/2)
		break;
	case "Farm":
		draw_sprite(Spr_Farm,0,mouse_x-sprite_get_width(Spr_Farm)/2,mouse_y-sprite_get_height(Spr_Farm)/2)
		break;
    case "Mine":
		draw_sprite(Spr_Clouds,0,mouse_x-sprite_get_width(Spr_Clouds)/2,mouse_y-sprite_get_height(Spr_Clouds)/2)
		break;
	}