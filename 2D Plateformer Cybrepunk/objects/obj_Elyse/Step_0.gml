/// @description Just trying to liv'in
//inputs
script_input();

//---------------------------------------------------------------------------------------------------

//
//reactions to inputs
//

var move = left + right;


//Differents states
if (state == 0)
{
	hor_speed = move * movespeed ; // = -movespeed or +movespeed
}
else if (state == 1)
{
	hor_speed = dash_speed;
}


//Cooldowns to add or remove entire numbers
script_jump_cd()


//Releasing jump key
if (jump == 0 && vert_speed < 0)
{
	//used as a kind of friction to avoid to be stopped brutally on a jump 
	//at the moment we release the space bar
	script_jump_cd()
}


//Jumping
if (jump && place_meeting(x,y + 1,obj_Wall) && down = 0)
{
	if (state == 0)
	{
		vert_speed = -jumpspeed;
	}
}


//Reset jumping
if (jump_pressed && !place_meeting(x,y + 1,obj_Wall) && down = 0 && !place_meeting(x,y - 1,obj_Wall))
{
	if (state == 0)
	{
		if(number_of_jumps == 0)
		{
		    vert_speed = -jumpspeed;
		    number_of_jumps = 1;
		 }
	}
}


//Crouch when you are in jump
if (down)
{
	if (vert_speed <0) 
	{
		vert_speed = 0;
	}
	if (vert_speed > 0)
	{
		vert_speed = 5;
	}
}


//dash reaction
if (dash)
{
	if (can_dash == true)
	{
		//statement of the dash
		state = 1;
		can_dash = false;
		
		//lauching alarm
		alarm[1] = dash_duration;//this will turn back state & dash_speed to 0 & 1 values
		
		if(move == 0)//condition to move on the direction the player is pointing
		{
			if(image_xscale==1) dash_speed = dash_speed_value;
			else dash_speed = -dash_speed_value;
		}
		else dash_speed = (sign(move))*dash_speed_value;//else if he's moving
		
		alarm[0] = dash_cooldown;//this will turn back the dash statement to "true" value

	}

}


//condition that stops falling when dashing
if (state == 1)
{
	vert_speed = 0;
}

//changing weapons
if (next_weapon && left_click == 0)
{
    if (equiped_weapon < weapons_equipped) 
    {
        if (equiped_weapon != 0)
        {
            script_get_weapon_id(equiped_weapon);
            instance_destroy(gun);
        }
        equiped_weapon ++;
        script_get_weapon_id(equiped_weapon);
        instance_create_layer(x,y,"Gun",gun);
    }
}
else if (previous_weapon && left_click == 0)
{
    if (equiped_weapon > 1)
    {
        script_get_weapon_id(equiped_weapon);
        instance_destroy(gun);
        equiped_weapon --;
        script_get_weapon_id(equiped_weapon);
        instance_create_layer(x,y,"Gun",gun);
    }
}


//---------------------------------------------------------------------------------------------------

//
//Collisions
//

//horizontal collision
if (place_meeting(x + hor_speed,y,obj_Wall))
{
	collision = 1;
    while(!place_meeting(x + sign(hor_speed),y,obj_Wall)) //sign = + or -
    {
        x += sign(hor_speed);
    }
    hor_speed = 0;
	state = 0;
}
else if (! place_meeting(x + hor_speed,y,obj_Wall))
{
	collision = 0;
}
x += hor_speed;



//vertical collision
if (place_meeting(x,y + vert_speed,obj_Wall) )
{
    while(!place_meeting(x,y + sign(vert_speed),obj_Wall))
    {
        y += sign(vert_speed);
    }
    vert_speed = 0;
}

y += vert_speed;


//---------------------------------------------------------------------------------------------------

//
//Shoot
//

//Directions
angle = point_direction(x,y,mouse_x, mouse_y);


	if (337.5 < angle || angle < 22.5) //center right
	{
		shoot = 0;
		image_xscale = 1;
	}

	if (22.5 < angle && angle < 67.5) //upper right
	{
		shoot = 45;
		image_xscale = 1;
	}

	if (67.5 < angle && angle <= 90) //upper middle (right)
	{
		shoot = 90;
		image_xscale = 1;
	}
	
	if (90 < angle && angle <= 112.5) //upper middle (left)
	{
		shoot = 90;
		image_xscale = -1;
	}
	
	if (112.5 < angle && angle < 157.5) //upper left
	{
		shoot = 135;
		image_xscale = -1;
	}

	if (157.5 < angle && angle < 202.5) //center left
	{
		shoot = 180;
		image_xscale = -1;
	}

	if (202.5 < angle && angle < 247.5) //lower left
	{
		shoot = 225;
		image_xscale = -1;
	}

	if (247.5 < angle && angle < 270) //lower middle (left)
	{
		shoot = 270;
		image_xscale = -1;
	}
	
	if (270 < angle && angle < 292.5) //lower middle (right)
	{
		shoot = 270;
		image_xscale = 1;
	}
	
	if (292.5 < angle && angle < 337.5) //lower right
	{
		shoot = 315;
		image_xscale = 1;
	}
//---------------------------------------------------------------------------------------------------


//
//Animations
//

//Jump / on air animation
if (!place_meeting(x,y+1,obj_Wall))
{
	sprite_index = spr_Elyse_Walking;//this needs to be changed, but the code is here
	//image_speed = 0;
	
	if (sign(vert_speed > 0)) 
	{
		image_index = 2;
	}
	else 
	{
		image_index = 0;
	}
}
else 
{
	image_speed = 1;
}

//
//Player while moving

//Backwards
if(move > 0 && (90 < angle && angle < 270))
{
	sprite_index = spr_Elyse_WalkingBackwards;
	image_xscale = -1;
}
else if ((move < 0 && ((0 < angle && angle < 90) || ( 270 < angle && angle < 360))))
{
	sprite_index = spr_Elyse_WalkingBackwards;
	image_xscale = 1;
}
//Normal
//walking animation
else if (move < 0 && (90 < angle && angle < 270))
{
	sprite_index = spr_Elyse_Walking;
}
else if (move > 0 && ((0 < angle && angle < 90) || ( 270 < angle && angle < 360)))
{
	sprite_index = spr_Elyse_Walking;
}
//standing sprite
else if (move == 0)
{
	sprite_index = spr_Elyse_Standing;
}

//getting new weapons
if (instance_exists(obj_Weapon_Ground))
{
	if (interact)
	{
		if (-15 < obj_Weapon_Ground.x - x && obj_Weapon_Ground.x - x < 15 && -30 < obj_Weapon_Ground.y - y && obj_Weapon_Ground.y - y < 30)
		{
			weapons_equipped ++;
			
			if (weapons_equipped > 7)
			{
				weapons_equipped = 7;
			}
			
			instance_destroy(instance_nearest(x, y, obj_Weapon_Ground));
		}
	}
}

//---------------------------------------------------------------------------------------------------


//
//Others
//

//Death by fall
if (place_meeting(x,y,obj_Deathfall) || restart == 1)
{
	game_restart();
}
