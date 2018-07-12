/// @description Shot

flash = 3;
hp -= obj_Bullet.dmg;// //Here dmg = 1 so hp -= 1


instance_destroy(instance_nearest(x,y,obj_Bullet));
