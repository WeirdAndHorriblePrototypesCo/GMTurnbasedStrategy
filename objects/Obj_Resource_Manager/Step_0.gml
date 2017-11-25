/// @description Step event.

if Upgrade = 1 {
    check_costs()
    if NotEnough == 0 {
        UpTarget.Upgrade = 1
        }
    }

if global.MenuOpen != -1 && !instance_exists(Obj_Click) {
    Mouse_Location = instance_create_depth(global.MenuOpen.x+(global.MenuOpen.sprite_width/2),global.MenuOpen.y+(global.MenuOpen.sprite_height/2),-10,Obj_Click)
    }
if global.MenuOpen == -1 && instance_exists(Obj_Click) {
    instance_destroy(Mouse_Location)
    }