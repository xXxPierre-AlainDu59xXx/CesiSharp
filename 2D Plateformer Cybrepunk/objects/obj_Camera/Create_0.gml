/// @description Set up of the camera

cam = view_camera[0];
follow = obj_Elyse;
view_width = camera_get_view_width(cam) * 0.5;//
view_height = camera_get_view_height(cam) * 0.5;//
xTo = xstart;
yTo = ystart;

//Setting up how strong the shaking will be
shake_length = 0;
shake_magnitude = 0;//"radius" of shaking
shake_remain = 0;//decreasing shake_magnitude
buff = 8;//buffer