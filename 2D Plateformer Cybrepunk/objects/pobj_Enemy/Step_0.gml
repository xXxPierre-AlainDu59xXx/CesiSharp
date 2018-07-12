///@description just hang'in around
//Vertical fall
if (vert_speed < 0) 
{
	vert_speed += (grav*3); //adding speed to actual negative speed 'til  = 0  (in air)
}

if (vert_speed  >= 0) //adding speed for falling : falling slower
{
	vert_speed += (grav*2);
}



//Collsion
//horizontal collision
if (place_meeting(x + hor_speed,y,obj_Wall))
{
    while(!place_meeting(x + sign(hor_speed),y,obj_Wall)) //sign = + or -
    {
        x += sign(hor_speed);
    }
    hor_speed = 0;
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


//Death by hit
if(hp <=0)
{
	instance_destroy();
	script_screen_shake(25,10);
}
