//Inputs

//keyboard
right = keyboard_check(ord("D"))				//||			(gamepad_axis_value(0,gp_axislh) > 0);
left = -keyboard_check(ord("Q"))				//||			(gamepad_axis_value(0,gp_axislh) < 0);
jump = keyboard_check(vk_space)					//||			 gamepad_button_check(0,gp_face1);
jump_pressed = keyboard_check_pressed(vk_space) //||			 gamepad_button_check_pressed(0,gp_face1);	
down = keyboard_check(ord("S"))					//||			(gamepad_axis_value(0,gp_axislv) < 0);
//down_pressed = keyboard_check_pressed(ord("S"));
dash =  keyboard_check(vk_shift)		//||			 gamepad_button_check_pressed(0,gp_shoulderlb);

//mouse
left_click = mouse_check_button(mb_left)		//||			 gamepad_button_check_pressed(0,gp_face2);
next_weapon = mouse_wheel_down()				//||			 gamepad_button_check_pressed(0,gp_shoulderl);
previous_weapon = mouse_wheel_up()				//||			 gamepad_button_check_pressed(0,gp_shoulderr);
knife = mouse_check_button(mb_right)


//special
restart = keyboard_check(ord("R"));
interact = keyboard_check_pressed(ord("E"));			//||			

gamepad_set_axis_deadzone(0,0.2);