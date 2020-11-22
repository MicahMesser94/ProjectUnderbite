<<<<<<< HEAD:scripts/scr_EnemyHit/scr_EnemyHit.gml
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_EnemyHit()
{
	var damage = argument0;
	hp -= damage;
	flash = 3
	instance_destroy()

=======
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit()
{
	var damage = argument0;
	hp -= damage;
	flash = 3
	instance_destroy()

>>>>>>> 1179d14f8bc17da511d4be6104639ee7d2e9a090:scripts/EnemyHit/EnemyHit.gml
}