/// @description Setup variables.

//Login = 0 -> No connection. Asked to reconnect.
//Login = 1 -> Connected & Loggin' in.
//Login = 2 -> Connected & Create account
//Login = 3 -> Connected Menu
//Login = 4 -> No connection. Asked for an IP.

global.LoggedIn=0
Login = 4

//Button settings.
Button1 = 0
Button2 = 0
Button3 = 0
Button4 = 0
Button5 = 1
Letters1 = ds_list_create()
Letters2 = ds_list_create()
Letters3 = ds_list_create()
Letters4 = ds_list_create()
Letters5 = ds_list_create()
Nonsense = ds_list_create()
var X = irandom(2)
if X = 0 { ds_list_add(Nonsense,"M","O","O","O","O","O","V","E","A","L","O","N","G","!","!") }
if X = 1 { ds_list_add(Nonsense,"M","U","R","L","O","C","S","L","O","V","E","F","I","S","H") }
if X = 2 { ds_list_add(Nonsense,"T","O","O","L","O","N","G","P","A","S","S","W","O","R","D") }

//Draw settings
DrawError = 0 
DrawError2 = 0
CreatedAccount = 0
