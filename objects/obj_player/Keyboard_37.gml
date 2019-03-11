<<<<<<< HEAD
if (can_place_road(grid_x-1, grid_y) && !commuter_exists(grid_x-1, grid_y))
	move_gridpos(-1, 0, 4);
=======
if (can_place_road(grid_x-1, grid_y) && !building_exists(grid_x-1, grid_y))
	if (road_exists(grid_x-1, grid_y))
		move_gridpos(-1, 0, 8);
	else
		move_gridpos(-1, 0, 4);
>>>>>>> master
