var _Farms = 0
var _Mines = 0
var _Houses = 0
var _Rounds = 0

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

var _Rounds = 0
repeat instance_number(Obj_Production_Building) {
    var _Target = instance_find(Obj_Production_Building,_Rounds)
    if _Target.Owner == global.Username {
	    if _Target.Type == "Farm" { _Farms+=1 }
        if _Target.Type == "Mine" { _Mines+=1 }
        }
    _Rounds+=1
    }
buffer_write(Buffer, buffer_u32, _Farms)
buffer_write(Buffer, buffer_u32, _Mines)
network_send_packet(Socket, Buffer, buffer_tell(Buffer));

var _Rounds = 0
repeat instance_number(Obj_Clouds) {
	var _Target = instance_find(Obj_Clouds,_Rounds)
	_Target.Move = 1
	_Rounds+=1
	}

_Rounds=0
repeat instance_number(Obj_Production_Building) {
	var _Target = instance_find(Obj_Production_Building,_Rounds)
    if _Target.Owner == global.Username {
	    _Target.NextTurn = 1
        }
	_Rounds+=1
	}
	
_Rounds=0
repeat instance_number(Obj_House) {
	var _Target = instance_find(Obj_House,_Rounds)
	if _Target.Owner == global.Username {
	    _Target.NextTurn = 1
        }
	_Rounds+=1
	}
