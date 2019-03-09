//building_exists(gridposx, gridposy)
var gridposx = argument0;
var gridposy = argument1;
with (obj_building)
{
	if (grid_x == gridposx && grid_y == gridposy)
		return true;
}

return false;