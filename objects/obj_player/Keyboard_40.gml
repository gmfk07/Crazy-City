if (can_place_road(grid_x, grid_y+1) && !commuter_exists(grid_x, grid_y+1) && !building_exists(grid_x, grid_y+1))
	if (road_exists(grid_x, grid_y+1)){
		move_gridpos(0, 1, 6);
		after_image_speed = 12;
	}
	else if (road_mode){
		move_gridpos(0, 1, 3);
		after_image_speed = 1;
	}

image_index = 1;