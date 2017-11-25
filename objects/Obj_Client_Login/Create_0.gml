/// @description Setup variables.

//Login = 0 -> No connection. Asked to reconnect.
//Login = 1 -> Connected & Loggin' in.
//Login = 2 -> Connected & Create account
//Login = 3 -> Connected Menu
//Login = 4 -> No connection. Asked for an IP.

//Version number
Version = "Version 2.1"


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

//Useless title settings
RandomNameAlpha=0
ChangeNames=0.01
_Name1 = irandom(2)
_Name2 = irandom(2)
if _Name1 = 0 {_Name1 = "Merlijn"}
if _Name1 = 1 {_Name1 = "Mart"}
if _Name1 = 2 {_Name1 = "Jorian"}
if _Name2 = 0 {_Name2 = "Merlijn"}
if _Name2 = 1 {_Name2 = "Mart"}
if _Name2 = 2 {_Name2 = "Jorian"}
