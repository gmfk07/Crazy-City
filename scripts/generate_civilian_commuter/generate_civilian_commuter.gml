//generate_civilian_commuter()
//	attempts to generate a commuter, returns a boolean indicating success

var buildingPair = get_random_building_pair();
if (!is_array(buildingPair) or array_length_1d(buildingPair) < 2) {
	show_debug_message("Failed to select two buildings, not spawning commuter/civilian");
	return false;
}

var startBuilding = buildingPair[0];
var startX = startBuilding.x_gridpos;
var startY = startBuilding.y_gridpos;
	
var destinationBuilding = buildingPair[1];
var destinationX = destinationBuilding.x_gridpos;
var destinationY = destinationBuilding.y_gridpos;
	
var newActor = instance_create_layer(0, 0, "Instances", obj_commuter);
with (newActor) {
	set_gridpos(startX, startY);
	//the actore(civilian and commuter) coordinates are centered instead of top left
	x += 0.5*GRID_SIZE;
	y += 0.5*GRID_SIZE;
	destination[0] = destinationX;
	destination[1] = destinationY;
	desX = destinationX*GRID_SIZE + 0.5*GRID_SIZE;
	desY = destinationY*GRID_SIZE + 0.5*GRID_SIZE;
	if mp_grid_define_path(x,y, desX, desY, path){
		show_debug_message("there should be a connected pair!");
		// there is a path, it should be a commuter unless there are no civilians on the map
		// also include small chance of spawning a civilian anyway
		if (instance_number(obj_civilian) == 0 or choose(1,2,3,4) == 1) {
			//add a spawn effect
			effect_create_above(ef_star, x, y, 2, c_white);
			x -= 0.5*GRID_SIZE;
			y -= 0.5*GRID_SIZE;
			instance_change(obj_civilian, true);
			depth = -1;
			show_debug_message("Placed civilian at " + string(startX) + "," + string(startY) + ".");
			show_debug_message("Destination of the civilian: " + string(destination[0]) + ", " + string(destination[1]));	
		} else {
			show_debug_message("Placed commuter at " + string(startX) + "," + string(startY) + ".");
			image_speed = 1;
			depth = -1;
			pos = 1;
			x_goto = path_get_point_x(path, pos);
			y_goto = path_get_point_y(path, pos);
			show_debug_message("Destination of the commuter: " + string(destination[0]) + ", " + string(destination[1]));
		}
	}
	else{
		//no path, a civilian
		//add a spawn effect
		effect_create_above(ef_star, x, y, 2, c_white);
		x -= 0.5*GRID_SIZE;
		y -= 0.5*GRID_SIZE;
		instance_change(obj_civilian, true);
		depth = -1;
		show_debug_message("Placed civilian at " + string(startX) + "," + string(startY) + ".");
		show_debug_message("Destination of the civilian: " + string(destination[0]) + ", " + string(destination[1]));
	}
	
	// if civilian number is too low give a boost sometimes
	if (instance_number(obj_civilian) == 1 and choose(1,2,3,4) == 1) {
		generate_civilian_commuter();
	} else if (choose(1,2,3,4,5,6) == 1) { // further increase spawn rates by having random chance of generating another civilian
		generate_civilian_commuter();
	}
}



return true;