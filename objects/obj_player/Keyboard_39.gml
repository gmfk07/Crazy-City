if (can_place_road(grid_x+1, grid_y) && !commuter_exists(grid_x+1, grid_y))
	move_gridpos(1, 0, 4);