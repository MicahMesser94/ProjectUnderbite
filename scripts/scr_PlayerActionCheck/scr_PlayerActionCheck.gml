// controller guide: 
//	https://docs.yoyogames.com/source/dadiospice/002_reference/mouse,%20keyboard%20and%20other%20controls/gamepad%20input/index.html
// useful gamepad check functions
//	gamepad_button_check_pressed(device, button);
//	gamepad_button_check(device, button);
//	gamepad_axis_value(device, axisIndex); 
//		axisInded: gp_axislh, gp_axislv, gp_axisrh, gp_axisrv

// TODO 
// Controller support
//	aim direction
//	pickUp broken
function scr_PlayerActionCheck(){
	player_left = keyboard_check(ord("A"))
					|| (gamepad_axis_value(0, gp_axislh) < 0); // come back to this, maybe put a negative in front
	player_right = keyboard_check(ord("D"))
					|| (gamepad_axis_value(0, gp_axislh) > 0);
	player_jump = keyboard_check_pressed(vk_space)
					|| gamepad_button_check_pressed(0, gp_face1);
	player_jumpHi = keyboard_check(vk_space)
					|| gamepad_button_check(0, gp_face1);
	player_attack = keyboard_check_pressed(ord("Q"))
					|| gamepad_button_check_pressed(0, gp_face4);
	player_reload = keyboard_check_pressed(ord("R"))
					|| gamepad_button_check_pressed(0, gp_face2);
	player_roll = keyboard_check_pressed(vk_lshift)
					|| gamepad_button_check_pressed(0, gp_shoulderl);
	player_pickUp = keyboard_check_pressed(ord("E"))
					|| gamepad_button_check_pressed(0, gp_face3);
	// change this to inventoryOne
	player_inventoryOne = keyboard_check_pressed(ord("1"))
					|| gamepad_button_check_pressed(0, gp_padu);
	player_inventoryTwo = keyboard_check_pressed(ord("2"))
					|| gamepad_button_check_pressed(0, gp_padr);
	player_fire = mouse_check_button(mb_left)
					|| gamepad_button_check(0, gp_shoulderrb);
	player_altFire = mouse_check_button(mb_right)
					|| gamepad_button_check(0, gp_shoulderlb);
}