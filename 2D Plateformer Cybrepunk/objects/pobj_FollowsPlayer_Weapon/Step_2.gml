/// @description Gets player position
if (has_recoil == true)
{
	x = obj_Elyse.x-lengthdir_x(recoil, image_angle); //so when we shoot, the gun will be pushed backward. If there's no shoot, it stays in position, as recoil value = 0
	y = obj_Elyse.y-lengthdir_y(recoil, image_angle);
}
else 
{
	x = obj_Elyse.x;
	y = obj_Elyse.y;
}
