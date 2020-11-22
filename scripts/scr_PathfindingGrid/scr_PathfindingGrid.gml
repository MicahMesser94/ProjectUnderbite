<<<<<<< HEAD:scripts/scr_PathfindingGrid/scr_PathfindingGrid.gml
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_PathfindingGrid()
{
	//Create pathfinding grid
	var cell_width = 32;
	var cell_height = 32;

	var hcells = room_width div cell_width;
	var vcells = room_height div cell_height;

	global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

	//Add walls
	mp_grid_add_instances(global.grid,obj_wall, false);

=======
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Pathfinding_grid()
{
	//Create pathfinding grid
	var cell_width = 32;
	var cell_height = 32;

	var hcells = room_width div cell_width
	var vcells = room_height div cell_height;

	global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

	//Add walls
	mp_grid_add_instances(global.grid,obj_wall, false);

>>>>>>> 1179d14f8bc17da511d4be6104639ee7d2e9a090:scripts/Pathfinding_grid/Pathfinding_grid.gml
}