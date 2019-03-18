//road_exists(gridposx, gridposy)
var gridposx = argument0;
var gridposy = argument1;
with (obj_rock)
{
	if (grid_x == gridposx && grid_y == gridposy)
		return true;
}

return false;