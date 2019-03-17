#macro GRID_SIZE 32

#macro RAGE_MAX 100
#macro RAGE_PER_SECOND_ANGRY 1
#macro RAGE_PER_SECOND_SEETHING 2
#macro DELIVERY_RAGE_DECREASE 8

global.rage = 0;
depth = -10;

randomize();
alarmTime = room_speed * 6;
alarm_set(0, alarmTime);
buildingLocations = []; // True wherever a building is present, false otherwise
for (var yIndex = 0; yIndex < room_height div GRID_SIZE - 1; yIndex++;) {
	for (var xIndex = 0; xIndex < room_width div GRID_SIZE; xIndex++;) {
		buildingLocations[yIndex, xIndex] = false;
	}
}
while (instance_number(obj_building) < 2) {
	generate_building();
}
