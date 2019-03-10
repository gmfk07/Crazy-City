//generate_commuter()
//	attempts to generate a commuter, returns a boolean indicating success

var buildingPair = get_random_building_pair();
if (!is_array(buildingPair) or array_length_1d(buildingPair) < 2) {
	show_debug_message("Failed to select two buildings, not spawning commuter");
	return false;
}

var startBuilding = buildingPair[0];
var startX = startBuilding.x_gridpos;
var startY = startBuilding.y_gridpos;
	
var destinationBuilding = buildingPair[1];
var destinationX = destinationBuilding.x_gridpos;
var destinationY = destinationBuilding.y_gridpos;
	
var newCommuter = instance_create_layer(0, 0, "Instances", obj_commuter);
with (newCommuter) {
	set_gridpos(startX, startY);
	//the commuter coordinates are centered instead of top left
	x += 16;
	y += 16;
	destination[0] = destinationX;
	destination[1] = destinationY;
	desX = destinationX*GRID_SIZE + 16;
	desY = destinationY*GRID_SIZE + 16;
	if mp_grid_define_path(x,y, desX, desY, path){
		show_debug_message("Yes there is a commuter and it has a path!")
		image_speed = 1;
		pos = 1;
		x_goto = path_get_point_x(path, pos);
		y_goto = path_get_point_y(path, pos);
	}
	else{
		instance_destroy(self)
		show_debug_message("No path for the commuter! it is destroyed")
	}
	show_debug_message("Destination: " + string(destination[0]) + ", " + string(destination[1]));
}


show_debug_message("Placed commuter at " + string(startX) + "," + string(startY) + ".");
return true;