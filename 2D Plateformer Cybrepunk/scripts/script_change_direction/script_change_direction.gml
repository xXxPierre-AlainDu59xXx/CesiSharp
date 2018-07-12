//Sprite changing
if (image_angle == 90 || image_angle == 270)
{
	if(obj_Elyse.image_xscale ==1) 
	{
		image_yscale = 1;
	}
	else 
	{
		image_yscale = -1;
	}
}

else if (image_angle <= 225 && image_angle >= 135) 
{
	image_yscale = -1; 
}

else
{
	image_yscale = 1; 
}