/// @description Set variables
//Visual clue's on or off?
GainRounds=0
NextTurn=0
ShowGain=0

//Set the type of building this is.
alarm[0]=1

//Who this building produces for & how much.
Owner=""
Loading=0
MaxLoading=1
ResourceAmount=0
ResourceType=""
Type = "Noone"

//Information / menu
LocalMenuOpen=0

//Upgrade related
Tier=0
Target = instance_find(Obj_Resource_Manager,0)
Upgrade = 0
DefaultSprite=sprite_index