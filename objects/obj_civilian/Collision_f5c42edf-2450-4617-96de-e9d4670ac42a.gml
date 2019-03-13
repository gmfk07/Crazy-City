/// @description Prevent double spawns

// Wait until create event happens
if (depth != -2 or other.depth != -2) {
	return;
}

if (x == other.x and y == other.y and spawn_time < other.spawn_time) {
	instance_destroy(other)
}