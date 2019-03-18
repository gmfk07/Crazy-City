event_inherited();

if (x % GRID_SIZE == 0 && y % GRID_SIZE == 0 && !road_exists(x/GRID_SIZE, y/GRID_SIZE))
{
	newroad = instance_create_depth(x, y, 10, obj_road);
	newroad.grid_x = x/GRID_SIZE;
	newroad.grid_y = y/GRID_SIZE;
	// set road image to vertical or horizontal depending on your orientation
	// 0/1/2/3 ==> right/down/left/up
	if (self.image_index == 0 || self.image_index == 2)
	{
		newroad.image_index = 0; // horizontal tile
	}
	else if (self.image_index == 1 || self.image_index == 3)
	{
		newroad.image_index = 1; // vertical tile
	}
	show_debug_message(string(x/GRID_SIZE) + " " + string(y/GRID_SIZE));

	// Update adjacent trees
	var road_x = newroad.grid_x;
	var road_y = newroad.grid_y;
	update_tree(road_x + 1, road_y);
	update_tree(road_x - 1, road_y);
	update_tree(road_x, road_y + 1);
	update_tree(road_x, road_y - 1);
	update_tree(road_x + 1, road_y + 1);
	update_tree(road_x + 1, road_y - 1);
	update_tree(road_x - 1, road_y + 1);
	update_tree(road_x - 1, road_y - 1);
}

time += delta_time;
