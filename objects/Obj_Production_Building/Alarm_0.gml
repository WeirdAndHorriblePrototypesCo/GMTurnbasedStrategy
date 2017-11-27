/// @description Set correct type.
// sprite, name etc.
var _Rounds = 0 
if Type = "Noone" { alarm[0]=10; exit }
repeat global.AmountOfBuildings {
    if ds_map_find_value(global.Buildings[_Rounds],"Name") == Type {
        var _String = global.Buildings[_Rounds]
        var _SpriteName = string(ds_map_find_value(_String,"Sprite"))
        var _Sprite = asset_get_index(_SpriteName)
        sprite_index = _Sprite
        DefaultSprite=_SpriteName
        ResourceAmount = ds_map_find_value(_String,"ResourceAmount")
        ResourceType = ds_map_find_value(_String,"ResourceType")
        MaxLoading = ds_map_find_value(_String,"MaxLoading")
        TierMax = ds_map_find_value(_String,"MaxTier")
		Vision = ds_map_find_value(_String,"Vision")
        break;
        }
    _Rounds+=1
    }
Tier=1

script_execute(vision,Vision)