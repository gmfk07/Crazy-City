//generate_civilian()
//	attempts to generate a civilian, returns a boolean indicating success

var buildingPair = get_random_building_pair();
if (!is_array(buildingPair) or array_length_1d(buildingPair) < 2) {
	show_debug_message("Failed to select two buildings, not spawning civilian");
	return false;
}
var startBuilding = buildingPair[0];
var startX = startBuilding.x_gridpos;
var startY = startBuilding.y_gridpos;
	
var destinationBuilding = buildingPair[1];
var destinationX = destinationBuilding.x_gridpos;
var destinationY = destinationBuilding.y_gridpos;
	
var newCivilian = instance_create_layer(0, 0, "Instances", obj_civilian);
with (newCivilian) {
	set_gridpos(startX, startY);
	destination[0] = destinationX;
	destination[1] = destinationY;
}

show_debug_message("Placed civilian at " + string(startX) + "," + string(startY) + ".");
return true;