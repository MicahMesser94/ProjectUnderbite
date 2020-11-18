/// @description Insert description here
// You can write your code in this editor
enum BALLOONSTATE
{
	IDLE,
	CHASE,
	ATTACK_SLASH,
	ATTACK_COMBO,
}
state = BALLOONSTATE.IDLE
vsp = 0;
hsp = 0;
walksp = 2
dir_x = 0
//dir_xx = 0
dir_y = 0
//dir_yy = 0
flash = 0
hp = 4
hitfrom = 0

//hitByAttack = ds_list_create();
//create path
path = path_add();
