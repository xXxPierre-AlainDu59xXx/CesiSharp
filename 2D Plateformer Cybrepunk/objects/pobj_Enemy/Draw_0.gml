/// @description Flashing

draw_self();//showing normal sprite

if (flash >0)
{
	flash --;
	shader_set(shader_White);//Applying white flash here
	draw_self();
	shader_reset();
}