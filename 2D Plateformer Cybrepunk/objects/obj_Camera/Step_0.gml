/// @description Updating cam

//update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//update object position
x += (xTo - x) / 15;
y += (yTo - y) / 15;


//avoid the camera to go outside the room
x = clamp(x,view_width+buff,room_width-view_width-buff);
y = clamp(y,view_height+buff,room_height-view_height-buff);


//screen shake
shake_remain = max(0, (shake_remain-((1/shake_length)*shake_magnitude) ));
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);


//update camera view
camera_set_view_pos(cam, x-view_width, y-view_height);