#macro GRID_SIZE 32
randomize();
alarmTime = room_speed * 6;
alarm_set(0, alarmTime);
buildingLocations = []; // True wherever a building is present, false otherwise
for (var yIndex = 0; yIndex < room_height div GRID_SIZE; yIndex++;) {
	for (var xIndex = 0; xIndex < room_width div GRID_SIZE; xIndex++;) {
		buildingLocations[yIndex, xIndex] = false;
	}
}
while (instance_number(obj_building) < 2) {
	generate_building();
}
