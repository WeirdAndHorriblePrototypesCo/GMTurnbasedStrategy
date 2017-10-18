/// @description Set basic Values.
camera = camera_create();
camera_speed = 5;
z = -10;
viewWidth = 640;
viewHeight = 480;

//Set-up view matrix
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
//Set-up projection matrix
var pm = matrix_build_projection_ortho(viewWidth,viewHeight,0,32000);
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

