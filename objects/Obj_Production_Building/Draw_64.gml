//Button locations:
WportDraw = view_wport[view_current]
HportDraw = view_hport[view_current]

if LocalMenuOpen == 1 {
    draw_sprite_stretched(sprite_index,image_index,WportDraw-700,HportDraw-195,36.5,36.5)
    draw_set_font(Fn_Info_Medium)
    draw_set_color(c_white)
    draw_text(WportDraw-655,HportDraw-190,Type)
    
    if MaxLoading != 1 { draw_text(WportDraw-480,HportDraw-190,string("Produces ")+string(ResourceAmount)+string(" ")+string(ResourceType)+string(" every ")+string(MaxLoading)+string(" turns.")) }
    else { draw_text(WportDraw-480,HportDraw-190,string("Produces ")+string(ResourceAmount)+string(" ")+string(ResourceType)+string(" every turn.")) }
    
    draw_sprite_stretched(Spr_Menu_Button,0,WportDraw-350,HportDraw-70,47,47)
    draw_sprite_stretched(Spr_Menu_Top,1,WportDraw-350,HportDraw-70,47,47) //Quit button
    
    draw_sprite_stretched(Spr_Menu_Button,0,WportDraw-700,HportDraw-70,47,47) 
    draw_sprite_stretched(Spr_Menu_Top,2,WportDraw-700,HportDraw-70,47,47) //Upgrade button
    }

if LocalMenuOpen == 1 && (point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),WportDraw-700,HportDraw-70,WportDraw-650,HportDraw-30)) {
    if Tier != TierMax {
        var _String = string(Type)+string("_T")+string(Tier+1)
        var _Rounds = 0
        repeat global.AmountOfBuildingUpgrades {
            if ds_map_find_value(global.BuildingUpgrades[_Rounds],"Name") == _String {
                var _TargetBuilding = global.BuildingUpgrades[_Rounds]
                Target.PlankCost = ds_map_find_value(_TargetBuilding,"Planks")
                Target.FoodCost = ds_map_find_value(_TargetBuilding,"Food")
                Target.StoneCost = ds_map_find_value(_TargetBuilding,"Stone")
                Target.WorkerCost = ds_map_find_value(_TargetBuilding,"Workers")
                UpgradeLayer = ds_map_find_value(_TargetBuilding, "LayerNumber")
                break;
                }
            _Rounds+=1
            }
        if mouse_check_button(mb_left) {
            Target.UpgradeType = _String
            Target.UpTarget = id
            Target.Upgrade = 1
            Target.XUpgradeLocation=x
            Target.YUpgradeLocation=y
            Target.UpgradeLayer=UpgradeLayer
            LocalMenuOpen=0
            global.MenuOpen=-1
    		exit
    		}
        }
    }

if Upgrade = 1 {
    Upgrade = 0
    var _Rounds = 0
    var _Name = string(Type)+string("_T")+string(Tier+1)
    repeat global.AmountOfBuildingUpgrades {
        if ds_map_find_value(global.BuildingUpgrades[_Rounds],"Name") == _Name {
            var _String = global.BuildingUpgrades[_Rounds]
            var _SpriteName = string(ds_map_find_value(_String,"Sprite"))
            var _Sprite = asset_get_index(_SpriteName)
            show_debug_message(_SpriteName)
            show_debug_message(asset_get_index(_SpriteName))
            sprite_index = _Sprite
            DefaultSprite=_SpriteName
            ResourceAmount = ds_map_find_value(_String,"ResourceAmount")
            ResourceType = ds_map_find_value(_String,"ResourceType")
            MaxLoading = ds_map_find_value(_String,"MaxLoading")
            break;
            }
        _Rounds+=1
        }
    Tier+=1
    }
if LocalMenuOpen == 1 && mouse_check_button(mb_left) {
	if (point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),WportDraw-350,HportDraw-70,WportDraw-300,HportDraw-30)) {
		global.MenuOpen = -1
		LocalMenuOpen=0
		exit
		}
	}