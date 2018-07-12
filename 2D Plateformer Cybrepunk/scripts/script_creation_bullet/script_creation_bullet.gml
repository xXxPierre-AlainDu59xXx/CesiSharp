/// @arg Nb_Bullets	Number of bullets shot at the same time
/// @arg Damage	Damages of a single bullet
/// @arg Precision Random firing angle
/// @arg speed	Bullet speed
/// @arg lifespan Bullet life time
/// @arg obj_name Name of the object to instantiate

angle = point_direction(x,y,mouse_x, mouse_y);

for (i = 0; i < argument[0]; i ++)
{

	if (337.5 < angle || angle < 22.5)
	{
		with (instance_create_layer(pobj_FollowsPlayer_Weapon.x+16,pobj_FollowsPlayer_Weapon.y-2,"Bullets",obj_name))
		{
		dmg = argument[1];
		speed = argument[3];
		direction = other.image_angle + random_range(-argument[2],argument[2]);
		image_angle = direction;
		cooldown = argument[4];
		}
	}

	if (22.5 < angle && angle < 67.5)
	{
		with (instance_create_layer(pobj_FollowsPlayer_Weapon.x+8,pobj_FollowsPlayer_Weapon.y-10,"Bullets",obj_name))
		{
		dmg = argument[1];
		speed = argument[3];
		direction = other.image_angle + random_range(-argument[2],argument[2]);
		image_angle = direction;
		cooldown = argument[4];
		}
	}

	if (67.5 < angle && angle <= 90)
	{
		with (instance_create_layer(pobj_FollowsPlayer_Weapon.x,pobj_FollowsPlayer_Weapon.y-18,"Bullets",obj_name))
		{
		dmg = argument[1];
		speed = argument[3];
		direction = other.image_angle + random_range(-argument[2],argument[2]);
		image_angle = direction;
		cooldown = argument[4];
		}
	}

	if (90 < angle && angle <= 112.5)
	{
		with (instance_create_layer(pobj_FollowsPlayer_Weapon.x,pobj_FollowsPlayer_Weapon.y-18,"Bullets",obj_name))
		{
		dmg = argument[1];
		speed = argument[3];
		direction = other.image_angle + random_range(-argument[2],argument[2]);
		image_angle = direction;
		cooldown = argument[4];
		}
	}
	
	if (112.5 < angle && angle < 157.5)
	{
		with (instance_create_layer(pobj_FollowsPlayer_Weapon.x-8,pobj_FollowsPlayer_Weapon.y-10,"Bullets",obj_name))
		{
		dmg = argument[1];
		speed = argument[3];
		direction = other.image_angle + random_range(-argument[2],argument[2]);
		image_angle = direction;
		cooldown = argument[4];
		}
	}

	if (157.5 < angle && angle < 202.5)
	{
		with (instance_create_layer(pobj_FollowsPlayer_Weapon.x-16,pobj_FollowsPlayer_Weapon.y-2,"Bullets",obj_name))
		{
		dmg = argument[1];
		speed = argument[3];
		direction = other.image_angle + random_range(-argument[2],argument[2]);
		image_angle = direction;
		cooldown = argument[4];
		}
	}
	
	if (202.5 < angle && angle < 247.5)
	{
		with (instance_create_layer(pobj_FollowsPlayer_Weapon.x-8,pobj_FollowsPlayer_Weapon.y+6,"Bullets",obj_name))
		{
		dmg = argument[1];
		speed = argument[3];
		direction = other.image_angle + random_range(-argument[2],argument[2]);
		image_angle = direction;
		cooldown = argument[4];
		}
	}
	
	if (247.5 < angle && angle < 270)
	{
		with (instance_create_layer(pobj_FollowsPlayer_Weapon.x,pobj_FollowsPlayer_Weapon.y+14,"Bullets",obj_name))
		{
		dmg = argument[1];
		speed = argument[3];
		direction = other.image_angle + random_range(-argument[2],argument[2]);
		image_angle = direction;
		cooldown = argument[4];
		}
	}
	
	if (270 < angle && angle < 292.5)
	{
		with (instance_create_layer(pobj_FollowsPlayer_Weapon.x,pobj_FollowsPlayer_Weapon.y+14,"Bullets",obj_name))
		{
		dmg = argument[1];
		speed = argument[3];
		direction = other.image_angle + random_range(-argument[2],argument[2]);
		image_angle = direction;
		cooldown = argument[4];
		}
	}
	
	if (292.5 < angle && angle < 337.5)
	{
		with (instance_create_layer(pobj_FollowsPlayer_Weapon.x+8,pobj_FollowsPlayer_Weapon.y+6,"Bullets",obj_name))
		{
		dmg = argument[1];
		speed = argument[3];
		direction = other.image_angle + random_range(-argument[2],argument[2]);
		image_angle = direction;
		cooldown = argument[4];
		}
	}

}