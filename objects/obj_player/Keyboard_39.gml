if (can_place_road(grid_x+1, grid_y) && !commuter_exists(grid_x+1, grid_y) && !building_exists(grid_x+1, grid_y))
	if (road_exists(grid_x+1, grid_y))
		move_gridpos(1, 0, 6);
	else if (road_mode)
		move_gridpos(1, 0, 3);

image_index = 0;