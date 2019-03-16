/// @description Prevent double spawns

if (x == other.x and y == other.y and spawn_time < other.spawn_time) {
	instance_destroy(other)
}