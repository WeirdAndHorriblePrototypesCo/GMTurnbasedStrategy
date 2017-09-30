/// @description Take random names.

var _Rounds = 0
repeat Inhabitants {
	Inhabitant[_Rounds] = ds_list_find_value(global.RandomNames,irandom(ds_list_size(global.RandomNames)-1))
	show_debug_message(Inhabitant[_Rounds])
	_Rounds+=1
	}