/*any value with 2 '//' and nothing behind those means changeable values. Other changes are prohibited.
If a comment has to be done, put 2 more '//' after you've added a space after the first two ones. ex :
my_value = 0; // //your-comment-here means this is a changeable value with a comment*/

//gravity
grav = 1;//

jumpspeed = 6;//
movespeed = 2;//


//directionnal speed
hor_speed = 0;
vert_speed = 0;

dash_speed = 1;
dash_speed_value = 7;//


//player statement : 0=move + fire ; 1=dash ;
state = 0;
collision = 0;
moving = 0;


//Weapons
equiped_weapon = 0;
weapon = 1;

//Shoot
angle = 0;
shoot = 0;


//counters
number_of_jumps = 0;


//cooldowns
dash_cooldown = room_speed * 1; // //Time to delay between castings
can_dash = true; //If true can use dash
dash_duration = 20; //

cd_fall = 8;//
cdmax_fall = cd_fall;

cd_ascend = 2;//
cdmax_ascend = cd_ascend;

cd_l = 0;
cdmax = 15;
cd_r = 0;

//Amount of weapons you carry (dev max 7, player max 5)
weapons_equipped = 7;