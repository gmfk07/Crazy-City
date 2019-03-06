// Keep resetting alarm until no more valid locations
if (generate_building(buildingLocations)) {
	alarm_set(0,alarmTime);
}