Socket = global.Socket
var _Size = 1024;
var _Type = buffer_fixed;
var _Alignment = 1;
Buffer = buffer_create(_Size,_Type,_Alignment)
buffer_seek(Buffer, buffer_seek_start, 0);
buffer_write(Buffer, buffer_string, "New Player"); //comes back with diff responces in async network.
buffer_write(Buffer, buffer_string, global.Username);
network_send_packet(Socket, Buffer, buffer_tell(Buffer));

//General Client Settings
global.MenuOpen = 0
global.LoadingVisible=0

/////////////////////////////////////////////
/////// List of random names ////////////////
global.RandomNames = ds_list_create()
ini_open(working_directory+"RandomNames.txt")
var _Rounds = 0
var _String = ""
_String=string("N")+string(_Rounds)
repeat ini_read_real("General","AmountOfNames",0) {
	ds_list_add(global.RandomNames,ini_read_string("Names",_String,"Error!"))
	_Rounds+=1
	_String=string("N")+string(_Rounds)
	if !ini_key_exists("Names",_String) {
		break;
		}
	} 
ini_close()

//////////////////////////////////////////////////
///////// Map of all building names //////////////

//This thing creates MAPs in MAPS.
// It first generates the "Buildings" part, and then seperately generates subtypes for each building
// in there.
global.Buildings = ds_map_create()
ini_open(working_directory+"Buildings.txt")
var _Rounds = 0
var _String = ""
repeat 300 { //The magic number 300 is the amount of buildings that fit into the menu. 5*6 for each screen
// times 8 for the catagories.
    var _Building = string("Building")+string(_Rounds)
    var _String = ini_read_string(_Building,"Name","Error!")
    global.Buildings[_Rounds] = ds_map_create()
    ds_map_add(global.Buildings[_Rounds],"Name",_String)
    ds_map_add(global.Buildings[_Rounds],"Planks",ini_read_real(_Building,"Planks",0))
    ds_map_add(global.Buildings[_Rounds],"Food",ini_read_real(_Building,"Food",0))
    ds_map_add(global.Buildings[_Rounds],"Stone",ini_read_real(_Building,"Stone",0))
    ds_map_add(global.Buildings[_Rounds],"Workers",ini_read_real(_Building,"Workers",0))
    _Rounds+=1
    }
global.AmountOfBuildings = _Rounds
ini_close()