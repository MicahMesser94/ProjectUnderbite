/// @description Insert description here
// You can write your code in this editor

//unarmed
weapons[0] = ds_map_create()
ds_map_add(weapons[0],"sprite",-1);
ds_map_add(weapons[0],"recoil",0);
ds_map_add(weapons[0],"recoil_push",0);
ds_map_add(weapons[0],"damage", 0);
ds_map_add(weapons[0],"projectile",-1);
ds_map_add(weapons[0],"startup",0);
ds_map_add(weapons[0],"length", 0);
ds_map_add(weapons[0],"cooldown",0);
ds_map_add(weapons[0],"bulletspeed",0);
ds_map_add(weapons[0],"clipsize",0);
ds_map_add(weapons[0],"automatic",false);


//Shotgun
weapons[1] = ds_map_create()
ds_map_add(weapons[1],"sprite",spr_gun);
ds_map_add(weapons[1],"recoil",4);
ds_map_add(weapons[1],"recoil_push",0);
ds_map_add(weapons[1],"damage", 0.5);
ds_map_add(weapons[1],"projectile",obj_bullet);
ds_map_add(weapons[1],"startup",0);
ds_map_add(weapons[1],"length", 26);
ds_map_add(weapons[1],"cooldown",20);
ds_map_add(weapons[1],"bulletspeed",5);
ds_map_add(weapons[1],"clipsize",6);
ds_map_add(weapons[1],"automatic",false);



//LMG
weapons[2] = ds_map_create()
ds_map_add(weapons[2],"sprite",spr_LMG);
ds_map_add(weapons[2],"recoil",4);
ds_map_add(weapons[2],"recoil_push",0);
ds_map_add(weapons[2],"damage", 0.3);
ds_map_add(weapons[2],"projectile",obj_LMGbullet);
ds_map_add(weapons[2],"startup",0);
ds_map_add(weapons[2],"length", 42);
ds_map_add(weapons[2],"cooldown",4);
ds_map_add(weapons[2],"bulletspeed",5);
ds_map_add(weapons[2],"clipsize",50);
ds_map_add(weapons[2],"automatic",true);


weapon = 0;
/*

ammo[array_length_1d(weapons)-1] = 0;
ammo[0] = -1;
*/
ammo = 0

ChangeWeapon(GUNEQUIP.NONE);

current_cd = 0;
current_delay = -1;
current_recoil = 0;

