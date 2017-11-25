var _Food = 0
var _Stone = 0
var _Planks = 0
var _Workers = 0
var _Rounds = 0

/// Move the clouds towards the new location ///
repeat instance_number(Obj_Clouds) {
	var _Target = instance_find(Obj_Clouds,_Rounds)
	_Target.Move = 1
	_Rounds+=1
	}
    
/// For each house get a thing ///
_Rounds=0
repeat instance_number(Obj_House) {
    var _Target = instance_find(Obj_House,_Rounds)
    if _Target.Owner == global.Username {
        if _Target.sprite_index=Spr_House_T1 { _Food+=1 }
        if _Target.sprite_index=Spr_House_T2 { _Food+=3 }
        _Target.NextTurn = 1
        }
    _Rounds+=1
    }




/// For every production building, get a thing ///
var _Rounds = 0
repeat instance_number(Obj_Production_Building) {
    var _Target = instance_find(Obj_Production_Building,_Rounds)
    if _Target.Owner == global.Username {
        if _Target.Loading == _Target.MaxLoading-1 { 
            if _Target.ResourceType == "Planks" { _Planks+=_Target.ResourceAmount }
            if _Target.ResourceType == "Food" { _Food+=_Target.ResourceAmount }
            if _Target.ResourceType == "Stone" { _Stone+=_Target.ResourceAmount }
            if _Target.ResourceType == "Workers" { _Workers+=_Target.ResourceAmount }
            }
        _Target.NextTurn += 1
        }
    _Rounds+=1
    }
    
buffer_seek(Buffer, buffer_seek_start, 0)
buffer_write(Buffer, buffer_string, "Turn Resources")
buffer_write(Buffer, buffer_string, global.Username)
buffer_write(Buffer, buffer_u32, _Planks)
buffer_write(Buffer, buffer_u32, _Food)
buffer_write(Buffer, buffer_u32, _Stone)
buffer_write(Buffer, buffer_u32, _Workers)
network_send_packet(Socket, Buffer, buffer_tell(Buffer));


