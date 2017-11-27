//This thing has vision. Takes the input of X for the distance.
var _Rounds = 0
repeat Vision {
	if real(Vision)-1 != _Rounds {
		instance_destroy(instance_place(x+(global.GridWidth*_Rounds),y+(global.GridHeight*_Rounds),Temp_Delme))
		instance_destroy(instance_place(x-(global.GridWidth*_Rounds),y-(global.GridHeight*_Rounds),Temp_Delme))
		instance_destroy(instance_place(x-(global.GridWidth*_Rounds),y+(global.GridHeight*_Rounds),Temp_Delme))
		instance_destroy(instance_place(x+(global.GridWidth*_Rounds),y-(global.GridHeight*_Rounds),Temp_Delme))
		}
	
	instance_destroy(instance_place(x,y+(global.GridHeight*_Rounds),Temp_Delme))
	instance_destroy(instance_place(x,y-(global.GridHeight*_Rounds),Temp_Delme))
	instance_destroy(instance_place(x+(global.GridWidth*_Rounds),y,Temp_Delme))
	instance_destroy(instance_place(x-(global.GridWidth*_Rounds),y,Temp_Delme))
	
	_Rounds+=1
	}