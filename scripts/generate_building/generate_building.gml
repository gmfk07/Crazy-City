//generate_building()
//	attempts to generate a building, returns a boolean indicating success

// Generate a building 75% of the time
var coinFlip = irandom(3);
if (coinFlip < 3) {
	var buildingSpawner = instance_find(obj_building_spawner, 0);
	
	// TODO: mark commuter, and road locations as occupied locations
	// TODO: stop once N buildings are placed
	
	var occupiedLocations = buildingSpawner.buildingLocations;

	// Mark player as occupied
	var player = instance_find(obj_player, 0);
	var playerX = player.x_gridpos;
	var playerY = player.y_gridpos;
	occupiedLocations[playerY, playerX] = true;
	
	// Mark adjacent to buildings as occupied
	for (var yIndex = 0; yIndex < array_height_2d(occupiedLocations); yIndex++;) {
		for (var xIndex = 0; xIndex < array_length_2d(occupiedLocations, yIndex); xIndex++;) {
			if (buildingSpawner.buildingLocations[yIndex, xIndex] == true) {
				if (yIndex - 1 >= 0) {
					occupiedLocations[yIndex - 1, xIndex] = true;
					if (xIndex - 1 >= 0) {
						occupiedLocations[yIndex - 1, xIndex - 1] = true;
					}
					if (xIndex + 1 < array_length_2d(occupiedLocations, yIndex)) {
						occupiedLocations[yIndex - 1, xIndex + 1] = true;
					}
				}
				if (yIndex + 1 < array_height_2d(occupiedLocations)) {
					occupiedLocations[yIndex + 1, xIndex] = true;
					if (xIndex - 1 >= 0) {
						occupiedLocations[yIndex + 1, xIndex - 1] = true;
					}
					if (xIndex + 1 < array_length_2d(occupiedLocations, yIndex)) {
						occupiedLocations[yIndex + 1, xIndex + 1] = true;
					}
				}
				if (xIndex - 1 >= 0) {
					occupiedLocations[yIndex, xIndex - 1] = true;
				}
				if (xIndex + 1 < array_length_2d(occupiedLocations, yIndex)) {
					occupiedLocations[yIndex, xIndex + 1] = true;
				}
			}
		}
	}
	
	var newBuildingLocation = new_unoccupied_location(occupiedLocations);
	var newX = newBuildingLocation[0];
	var newY = newBuildingLocation[1];
	
	if (newX < 0 or newY < 0) {
		show_debug_message("Failed to find suitable building location.");
		return false;
	}
	
	var newBuilding = instance_create_layer(0, 0, "Instances", obj_building);
	with (newBuilding) {
		set_gridpos(newX, newY);
	}
	buildingSpawner.buildingLocations[newY, newX] = true;
	show_debug_message("Placed building at " + string(newX) + "," + string(newY) + ".");
}

return true;