/// @description Coordinates


script_change_direction();

//Shoot
shoot_direction = obj_Elyse.shoot;
image_angle = shoot_direction;

firing_delay -= 1;
recoil = max(0, recoil-1) //we will take the max value so it means that if we have a negative value, 0 is max.

if (mouse_check_button(mb_left) && firing_delay < 0 )
{
	if( obj_Elyse.state == 2 || obj_Elyse.state == 0)
	{
		script_screen_shake(shake_magnitude, shake_length);
		firing_delay = firing_delay_cooldown;//
		recoil = recoil_reseter;
		script_creation_bullet(nb_bullet,dmg,precision,sanic_speed,lifespan,obj_name);
	}
}