if (can_place_road(grid_x, grid_y+1) && !commuter_exists(grid_x, grid_y+1))
	move_gridpos(0, 1, 4);