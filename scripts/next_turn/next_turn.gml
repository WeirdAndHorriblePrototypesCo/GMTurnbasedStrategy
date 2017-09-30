var _Rounds = 0
repeat instance_number(Obj_Clouds) {
	var _Target = instance_find(Obj_Clouds,_Rounds)
	_Target.Move = 1
	_Rounds+=1
	}