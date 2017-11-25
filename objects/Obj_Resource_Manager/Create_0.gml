/// @description Create event.

NotEnough=0
ShortageType=""
PlaceBuilding=0
PlaceType=""

//Building menu.
Menu = "Building Selection"
SubMenu = 0
OpenSubMenu = false
SubBuildings = 5
AmountOfTiers = 10

//The place goes from 1 -> 3 for no reason at all.
Place = 1

//Resource vars.
Planks=0
Food=0
Stone=0
Workers=0
PlankCost=0
FoodCost=0
StoneCost=0
WorkerCost=0

var _Size = 1024;
var _Type = buffer_fixed;
var _Alignment = 1;
Buffer = buffer_create(_Size,_Type,_Alignment)
Socket = global.Socket

//Drawing event for resources
LoadMenu = 0
MenuLoadingImage=0

//Categories for drawing:
Category[0] = "----"
Category[1] = "----"
Category[2] = "----"
Category[3] = "----"
Category[4] = "Magic"
Category[5] = "Faith"
Category[6] = "Steel"
Category[7] = "Basic"
SelectedMenu = 0

//If another building wants to use this object to upgrade.
Upgrade = 0
MenuHeight=10000000