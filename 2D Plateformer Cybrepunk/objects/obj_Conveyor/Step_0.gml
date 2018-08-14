//Reset Elyse jumps
if(place_meeting(x,y - 1,obj_Elyse))
{
	obj_Elyse.number_of_jumps = 0;
}


if(image_xscale = -1)
{
	movement = -1;
}
else if (image_xscale = 1)
{
	movement = 1;
}
	
//Move Elyse
if(place_meeting(x,y - 1,obj_Elyse) && obj_Elyse.collision == 0)
{
	if (obj_Elyse.moving = 1)
	{
		obj_Elyse.x += obj_Elyse.moving;
	}
	else if(obj_Elyse.moving = 0)
	{
		obj_Elyse.moving = 1;
	}
}
else if(place_meeting(x,y - 1,obj_Elyse) && obj_Elyse.collision == 1)
{
	obj_Elyse.moving = 0;
}

