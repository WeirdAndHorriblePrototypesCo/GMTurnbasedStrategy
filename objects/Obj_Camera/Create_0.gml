/// @description Create a camera

//Enable the use of views
view_enabled = true;

//Make view 0 visible 
view_set_visible(0, true);

//Set the port bounds of view 0 to 640x480
view_set_wport(0, 640);
view_set_hport(0, 480);

//Create the camera that we will use.
Camera = camera_create_view(0, 0, 640, 480, 0, -1, -1, -1, 32, 32);
view_set_camera(0, Camera);