/// @function                   mp_grid_define_path(start_x, start_y, finish_x, finish_y);
/// @param  {real}  start_x     The start X position for the path
/// @param  {real}  start_y     The start Y position for the path
/// @param  {real}  finish_x    The finish X position for the path
/// @param  {real}  finish_y    The finish Y position for the path
/// @param  {path}  path		The path object that used to store the path
/// @description                Create a path between two points using the path and MP grid
///                             stored in global variables.

var _sx = argument0;
var _sy = argument1;
var _fx = argument2;
var _fy = argument3;
var _path = argument4;

if !mp_grid_path(global.ai_grid, _path, _sx, _sy, _fx, _fy, false)
	{
	show_debug_message("ERROR: mp_grid_define_path() - No path created"); 
	//show_debug_message(string(_sx/GRID_SIZE)+","+string(_sy/GRID_SIZE)+" to " +string(_fx/GRID_SIZE)+","+string(_fy/GRID_SIZE));
	return false;
	}
else
	{
	path_set_kind(_path, 1);
	path_set_precision(_path, 8);
	return true;
	}