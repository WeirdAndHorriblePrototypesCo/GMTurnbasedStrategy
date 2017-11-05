var _Farms = 0
var _Mines = 0
var _Houses = 0
var _Rounds = 0

/// Do next turn for production buildings ///
repeat instance_number(Obj_Production_Building) {
	var _Target = instance_find(Obj_Production_Building,_Rounds)
    if _Target.Owner == global.Username {
	    _Target.NextTurn += 1
        }
	_Rounds+=1
	}

/// For each house get a thing ///
_Rounds=0
buffer_seek(Buffer, buffer_seek_start, 0)
buffer_write(Buffer, buffer_string, "Turn Resources")
buffer_write(Buffer, buffer_string, global.Username)
repeat instance_number(Obj_House) {
    var _Target = instance_find(Obj_House,_Rounds)
    if _Target.Owner == global.Username {
        _Houses+=1
        }
    _Rounds+=1
    }
buffer_write(Buffer, buffer_u32, _Houses)



/// For every production building, get a thing ///
var _Rounds = 0
repeat instance_number(Obj_Production_Building) {
    var _Target = instance_find(Obj_Production_Building,_Rounds)
    if _Target.Owner == global.Username {
	    if _Target.Type == "Farm" { _Farms+=_Target.ResourceAmount }
        if _Target.Type == "Mine" && _Target.Loading == _Target.MaxLoading-1 { _Mines+=_Target.ResourceAmount }
        }
    _Rounds+=1
    }
buffer_write(Buffer, buffer_u32, _Farms)
buffer_write(Buffer, buffer_u32, _Mines)
network_send_packet(Socket, Buffer, buffer_tell(Buffer));

/// Move the clouds towards the new location ///
var _Rounds = 0
repeat instance_number(Obj_Clouds) {
	var _Target = instance_find(Obj_Clouds,_Rounds)
	_Target.Move = 1
	_Rounds+=1
	}


/// Next turn for houses ///
_Rounds=0
repeat instance_number(Obj_House) {
	var _Target = instance_find(Obj_House,_Rounds)
	if _Target.Owner == global.Username {
	    _Target.NextTurn = 1
        }
	_Rounds+=1
	}
