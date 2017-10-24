var _Rounds = 0
repeat global.AmountOfBuildings {
    if ds_map_find_value(global.Buildings[_Rounds],"Name") == PlaceType {
        var _String = global.Buildings[_Rounds]
    
    /////////////// If you dont have the resources available //////////////
        if ds_map_find_value(_String,"Planks") > global.Planks {
        	NotEnough=30
        	ShortageType="Planks"
        	exit
        	}
        if ds_map_find_value(_String,"Food") > global.Food {
        	NotEnough=30
        	ShortageType="Food"
        	exit
        	}
        if ds_map_find_value(_String,"Stone") > global.Stone {
        	NotEnough=30
        	ShortageType="Stone"
        	exit
        	}
        if ds_map_find_value(_String,"Workers") > global.Workers {
        	NotEnough=30
        	ShortageType="Workers"
        	exit
        	}
        ////////////////// if you do have the resources available ////////////
        ShortageType=""
        global.Planks-=ds_map_find_value(_String,"Planks")
        global.Food-=ds_map_find_value(_String,"Food")
        global.Stone-=ds_map_find_value(_String,"Stone")
        global.Workers-=ds_map_find_value(_String,"Workers")
        break;
        }
    _Rounds+=1
    }

//Tell the server you've just bought a thing.
buffer_seek(Buffer,buffer_seek_start,0)
buffer_write(Buffer, buffer_string, "Buy Building")
buffer_write(Buffer, buffer_string, global.Username)
buffer_write(Buffer, buffer_u32, global.Planks)
buffer_write(Buffer, buffer_u32, global.Food)
buffer_write(Buffer, buffer_u32, global.Stone)
buffer_write(Buffer, buffer_u32, global.Workers)
network_send_packet(Socket, Buffer, buffer_tell(Buffer));
