if (x % GRID_SIZE == 0 && y % GRID_SIZE == 0 && !road_exists(x/GRID_SIZE, y/GRID_SIZE))
{
	newroad = instance_create_depth(x, y, 10, obj_road);
	newroad.grid_x = x/GRID_SIZE;
	newroad.grid_y = y/GRID_SIZE;
}