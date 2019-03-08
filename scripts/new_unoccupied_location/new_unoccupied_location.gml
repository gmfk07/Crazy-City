//new_unoccupied_location(occupiedArray)
//	given a 2D array with booleans at each location indicating whether or not a space is occupied,
//	return a random unoccupied pair of indices as an [x,y] array.
var occupiedArray = argument[0];
var unoccupiedCount = 0;
for (var yIndex = 0; yIndex < array_height_2d(occupiedArray); yIndex++;) {
	for (var xIndex = 0; xIndex < array_length_2d(occupiedArray, yIndex); xIndex++;) {
		if (occupiedArray[yIndex, xIndex] == false) {
			unoccupiedCount++;
		}
	}
}

if (unoccupiedCount == 0) {
	show_debug_message("Failed to find any unoccupied locations.");
	return [-1,-1];
}

var randomCount = irandom(unoccupiedCount - 1) + 1;
for (var yIndex = 0; yIndex < array_height_2d(occupiedArray); yIndex++;) {
	for (var xIndex = 0; xIndex < array_length_2d(occupiedArray, yIndex); xIndex++;) {
		if (occupiedArray[yIndex, xIndex] == false) {
			randomCount--;
			if (randomCount == 0) {
				return [xIndex, yIndex];
			}
		}
	}
}

// This is to catch bugs resulting from bad code in above loop.
show_debug_message("Somehow did not get unoccupied location properly. If this message is printed, debugging is needed.");
return [-1,-1];