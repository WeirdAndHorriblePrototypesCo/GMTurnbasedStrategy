/// @description Create event.

NotEnough=0
ShortageType=""
PlaceBuilding=0
PlaceType=0
Menu = "Building Selection"

//The place goes from 1 -> 3 for no reason at all.
Place = 1

//Resource vars.
Planks=0
Food=0
Stone=0
Workers=0

var _Size = 1024;
var _Type = buffer_fixed;
var _Alignment = 1;
Buffer = buffer_create(_Size,_Type,_Alignment)
Socket = global.Socket