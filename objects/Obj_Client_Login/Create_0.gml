/// @description Setup variables.

//Login = 0 -> No connection. Asked to reconnect.
//Login = 1 -> Connected & Loggin' in.
//Login = 2 -> Connected & Create account
//Login = 3 -> Connected Menu
//Login = 4 -> No connection. Asked for an IP.

//Version number
Version = "Version 2.0"


//Login details
Username = ""
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

//Draw settings
DrawError = 0 
DrawError2 = 0
DrawError3 = 0
DrawError4 = 0
CreatedAccount = 0
