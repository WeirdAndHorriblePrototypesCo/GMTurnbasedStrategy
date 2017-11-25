/// @description random rotation house.
Image = irandom(image_number)
if Image/2 != floor(Image/2) { 
	Image-=1
	}
image_index=Image
image_speed=0
LocalMenuOpen=0
Inhabitants=irandom(12)
Inhabitant[0] = ""
alarm[0]=1
//Button locations:
Wport = view_wport[view_current]
Hport = view_hport[view_current]
//Button locations for drawing (ALSO MENTIONED IN THE DRAWING SECTION)!!!!!!!
//Yes, its weird... Drawing buttons is weird. Dont ask me, if you remove them-
//from the "draw" section, they'll just refuse to work for some reason... o.O
WportDraw = view_wport[view_current]
HportDraw = view_hport[view_current]

GainRounds=0
NextTurn=0
ShowGain=0

Target = instance_find(Obj_Resource_Manager,0)
Upgrade = 0