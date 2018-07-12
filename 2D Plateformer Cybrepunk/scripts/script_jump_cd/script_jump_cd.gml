//Cooldown when you jump to add entire numbers
if (cd_ascend = cdmax_ascend)
{
		if (vert_speed < 0) 
		{
			vert_speed += (grav); //adding speed to actual negative speed 'til  = 0  (in air)
		}
}	

cd_ascend -= 1;

if (cd_ascend == 0)
{
	cd_ascend = cdmax_ascend;
}

//Cooldown when you fall to remove entire numbers
if (cd_fall = cdmax_fall)
{
		if (vert_speed  >= 0) //adding speed for falling : falling slower
		{
			vert_speed += (grav);
		}
}	

cd_fall -= 1;

if (cd_fall == 0)
{
	cd_fall = cdmax_fall;
}