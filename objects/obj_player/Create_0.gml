hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
isJumping = false;
isHit = false;
makeHat = false;
hp = 15;
hp_max = hp;
flash = 0;
hascontrol = true;
hitfrom = 0;
state = PLAYERSTATE.FREE
hitByAttack = ds_list_create();
done = 0;
iFrames = 0;
dashCount = 0;
canJump = 0;
grounded = false;
ammo = 0;
max_ammo = ammo;

healthbar_width = 162;
healthbar_height = 12;
healthbar_x = 100;
healthbar_y = 50;

enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	//ATTACK_COMBO,
}

enum GUNEQUIP
{
	NONE = 0,
	SHOTGUN = 1,
	LMG = 2
}
/*
if global.gunState != GUNEQUIP.NONE
{
	instance_create_layer(x,y,"gun",global.gunState)
}