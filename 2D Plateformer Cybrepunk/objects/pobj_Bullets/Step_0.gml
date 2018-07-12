//Collision with something
if (position_meeting(x,y,obj_Wall))
{
	instance_destroy();
}
else if (position_meeting(x,y,obj_Enemy_Soldier))
{
	(instance_nearest(x,y,obj_Enemy_Soldier)).flash = 3;
	script_screen_shake(0.1,10);
	(instance_nearest(x,y,obj_Enemy_Soldier)).hp -= dmg;
	instance_destroy();
}
else if (position_meeting(x,y,obj_Enemy))
{
	(instance_nearest(x,y,obj_Enemy)).flash = 3;
	script_screen_shake(0.1,10);
	(instance_nearest(x,y,obj_Enemy)).hp -= dmg;
	instance_destroy();
}

if (collision = 1)
{
	instance_destroy();	
}


//Life of bullet
if (cooldown = cooldownmax)
{
	
}	
cooldown -= 1;
if (cooldown == 0)
{
	instance_destroy();
	cooldown = cooldownmax;
}
