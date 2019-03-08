randomize();
alarmTime = 8; // room_speed * 2;
alarm_set(0, alarmTime);
buildingLocations = []; // True wherever a building is present, false otherwise
for (var yIndex = 0; yIndex < room_height div GRID_SIZE; yIndex++;) {
	for (var xIndex = 0; xIndex < room_width div GRID_SIZE; xIndex++;) {
		buildingLocations[yIndex, xIndex] = false;
	}
}
generate_building();
generate_building();