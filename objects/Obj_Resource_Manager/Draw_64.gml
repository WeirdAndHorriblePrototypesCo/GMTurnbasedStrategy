/// @description Draw relative to screen

var ViewW = view_wport[view_current];
var ViewH = view_hport[view_current];

//////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////// MENU BUTTONS /////////////////////////////////////////

//Main menu.
if Menu == "Building Selection" {
    //Draw the bottom of the screen black.
    draw_set_color(c_black)
    draw_rectangle(0,ViewH,ViewW,ViewH-200,0)
    
    //Draw the left and right side of the menu screen.
    draw_set_color(c_gray)
    draw_rectangle(ViewW,ViewH,ViewW-280,ViewH-200,0) //Right
    draw_rectangle(200,ViewH,0,ViewH-200,0)             //Left
    
    //Load menu is a little slower than start game. This is to prevent crashing if your internet is sloowwwwpokkkkeeeee ;)
    if LoadMenu == 1 {
        //Draw the resources on the left section of the menu screen.
        draw_set_color(c_black)
        var _Resources = "Resources :"
        var _Planks = string("Planks : ")+string(global.Planks)
        var _Food = string("Food : ")+string(global.Food)
        var _Stone = string("Stone : ")+string(global.Stone)
        var _Workers = string("Workers : ")+string(global.Workers)
        
        draw_set_font(Fn_Info_Medium)
        draw_text(100-string_width(_Resources)/2,ViewH-190,_Resources)
    	draw_text(100-string_width(_Planks)/2,ViewH-175,_Planks)
    	draw_text(100-string_width(_Food)/2,ViewH-160,_Food)
    	draw_text(100-string_width(_Stone)/2,ViewH-145,_Stone)
    	draw_text(100-string_width(_Workers)/2,ViewH-130,_Workers)
        
        if PlankCost != 0 {
            draw_text_color(+100-string_width(_Planks)/2+string_width(_Planks),ViewH-175,string(string(" ( -")+string(PlankCost)+string(" )")),c_red,c_red,c_red,c_red,1)
            }
        if FoodCost != 0 {
            draw_text_color(+100-string_width(_Food)/2+string_width(_Food),ViewH-160,string(string(" ( -")+string(FoodCost)+string(" )")),c_red,c_red,c_red,c_red,1)
            }
        if StoneCost != 0 {
            draw_text_color(+100-string_width(_Stone)/2+string_width(_Stone),ViewH-145,string(string(" ( -")+string(StoneCost)+string(" )")),c_red,c_red,c_red,c_red,1)
            }
        if WorkerCost != 0 {
            draw_text_color(+100-string_width(_Workers)/2+string_width(_Workers),ViewH-130,string(string(" ( -")+string(WorkerCost)+string(" )")),c_red,c_red,c_red,c_red,1)
            }
        }
    
    //here it will draw the categories.
    draw_set_color(c_black)
    var _Rounds = 0
    
    repeat 8 {
        draw_rectangle(ViewW-230,ViewH-2.5-25*_Rounds,ViewW-275,ViewH-22.5-25*_Rounds,0) //draw the shape
        _Rounds+=1
        }
    _Rounds=0
    repeat 8 {
        draw_text_color(ViewW-272.5,ViewH-2.5-25*_Rounds-17.5,Category[_Rounds],c_white,c_white,c_white,c_white,1) //draw the text
        _Rounds+=1
        }
        
    //If you hover over the categories, make the correct one appear.
    var _X = 0
    var _Y = 0
    var _ImageSize = 35
    var _Rounds = 0
    repeat 30 { // the amount of buildings displayed in the menu.     \/ Needs to be the same there as well!
        draw_sprite_stretched(Spr_Menu_Buildings,_Rounds+SelectedMenu*30,ViewW-(220-_X*(_ImageSize+2)),ViewH-185+(_Y*(_ImageSize+2)),_ImageSize,_ImageSize)
        _X+=1
        _Rounds+=1
        if _X == 6 {
            _X=0
            _Y+=1
            }
        }
    _Rounds=0
    
    //Respond to having the mouse hover over the menu. >.<!
    var _X = 0
    var _Y = 0
    var _Rounds = 0

    repeat 30 {
        if point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),ViewW-(220-_X*(_ImageSize+5)),ViewH-185+(_Y*(_ImageSize+5)),ViewW-(220-_X*(_ImageSize+5))+34,ViewH-185+(_Y*(_ImageSize+5))+34) {
            //PlaceType = ds_map_find_value(global.Buildings, _Rounds)
            var _String = global.Buildings[_Rounds]
            PlankCost = ds_map_find_value(_String,"Planks")
            FoodCost = ds_map_find_value(_String,"Food")
            StoneCost = ds_map_find_value(_String,"Stone")
            WorkerCost = ds_map_find_value(_String,"Workers")
            break;
            }
        else {
            PlankCost = 0
            FoodCost = 0
            StoneCost = 0
            WorkerCost = 0
            }
        _X+=1
        if _X == 6 {
            _X=0
            _Y+=1
            }
        _Rounds+=1
        }
    
    //((Change the building settings))
    _Rounds=0
    show_debug_message(device_mouse_x_to_gui(0))
    show_debug_message(ViewW-275)
    repeat 8 {
        if point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),ViewW-275,ViewH-22.5-25*_Rounds,ViewW-230,ViewH-2.5-25*_Rounds) {
            SelectedMenu=_Rounds
            }
        _Rounds+=1
        }
    ////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////// MENU BUTTON RESPONCES!!!! ////////////////////////////////
    var _ImageSize = 32
    var _X = 0
    var _Y = 0
    var _Rounds = 0

    //Find the building you clicked on and add it to your mouse so you can place them.
    repeat 30 {
        if point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),ViewW-(220-_X*(_ImageSize+5)),ViewH-185+(_Y*(_ImageSize+5)),ViewW-(220-_X*(_ImageSize+5))+34,ViewH-185+(_Y*(_ImageSize+5))+34) && mouse_check_button(mb_left){
            PlaceType = ds_map_find_value(global.Buildings[_Rounds], "Name")
            }
        _X+=1
        if _X == 6 {
            _X=0
            _Y+=1
            }
        _Rounds+=1
        }
    }

//Menu type 2.
if Menu == "Resources" {
	//Draw the "black background"
	draw_set_color(c_black);
	draw_button(0,0,200,ViewH/2,1);
	
	//Set the fonts.
	draw_set_font(Fn_Info_Medium)
	draw_set_color(c_white)
	
	//Draw resources
	draw_text(40,25,string("Resources :"))
	draw_text(40,40,string("Planks : ")+string(global.Planks))
    if PlankCost != 0 {
        var _String = string(string("Planks : ")+string(global.Planks))
        draw_text_color(40+string_width(_String),40,string(" -")+string(PlankCost),c_red,c_red,c_red,c_red,1)
        }
	draw_text(40,55,string("Food : ")+string(global.Food))
    if FoodCost != 0 {
        var _String = string(string("Food : ")+string(global.Food))
        draw_text_color(40+string_width(_String),40,string(" -")+string(FoodCost),c_red,c_red,c_red,c_red,1)
        }
	draw_text(40,70,string("Stone : ")+string(global.Stone))
    if StoneCost != 0 {
        var _String = string(string("Stone : ")+string(global.Stone))
        draw_text_color(40+string_width(_String),40,string(" -")+string(StoneCost),c_red,c_red,c_red,c_red,1)
        }
	draw_text(40,85,string("Workers : ")+string(global.Workers))
    if WorkerCost != 0 {
        var _String = string(string("Workers : ")+string(global.Workers))
        draw_text_color(40+string_width(_String),40,string(" -")+string(WorkerCost),c_red,c_red,c_red,c_red,1)
        }
	}

/////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////// ERROR MESSAGES //////////////////////////////////////////////////
if NotEnough != 0 {
    var _String = string("Not enough ")+string(ShortageType)
    draw_set_color(c_black)
    draw_rectangle(device_mouse_x_to_gui(0)-(string_width(_String)/2+10),device_mouse_y_to_gui(0)-30,device_mouse_x_to_gui(0)+(string_width(_String)/2+10),device_mouse_y_to_gui(0)+5,0)
    draw_set_font(Fn_Info_Medium)
	draw_set_color(c_white)
	draw_text(device_mouse_x_to_gui(0)-string_width(_String)/2,device_mouse_y_to_gui(0)-20,_String)
	NotEnough-=1
	}

///////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////// DRAW SELECTED OBJECT ///////////////////////////////////////////////////
//Draw Selected building
switch PlaceType {
	case "House":
		draw_sprite(Spr_House,0,device_mouse_x_to_gui(0)-sprite_get_width(Spr_House)/2,device_mouse_y_to_gui(0)-sprite_get_height(Spr_House)/2)
		break;
	case "Farm":
		draw_sprite(Spr_Farm,0,device_mouse_x_to_gui(0)-sprite_get_width(Spr_Farm)/2,device_mouse_y_to_gui(0)-sprite_get_height(Spr_Farm)/2)
		break;
    case "Mine":
		draw_sprite(Spr_Mine,0,device_mouse_x_to_gui(0)-sprite_get_width(Spr_Mine)/2,device_mouse_y_to_gui(0)-sprite_get_height(Spr_Mine)/2)
		break;
    case "Windmill":
		draw_sprite(Spr_Windmill,0,device_mouse_x_to_gui(0)-sprite_get_width(Spr_Windmill)/2,device_mouse_y_to_gui(0)-sprite_get_height(Spr_Windmill)/2)
		break;
	}
    
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////// HOVER OVER EVENT TEXT ///////////////////////////////////////////////////
