//generate_building(buildingLocations)
//	attempts to generate a building, return a boolean indicating success

// Generate a building 75% of the time
var buildingLocations = argument[0];
var coinFlip = irandom(3);
if (coinFlip < 3) {
	// TODO: mark player, commuter, and road locations as occupied locations
	// TOMAYBEDO: prevent buildings from being placed next to other buildings?
	// TODO: stop once N buildings are placed
	var newBuildingLocation = new_unoccupied_location(buildingLocations);
	var newX = newBuildingLocation[0];
	var newY = newBuildingLocation[1];
	
	if (newX < 0 or newY < 0) {
		show_debug_message("Failed to find suitable building location.");
		return false;
	}
	
	var newBuilding = instance_create_layer(0, 0, "Instances", obj_building);
	with(newBuilding) {
		set_gridpos(newX, newY);
	}
	buildingLocations[newY, newX] = true;
	show_debug_message("Placed building at " + string(newX) + "," + string(newY) + ".");
}

return true;