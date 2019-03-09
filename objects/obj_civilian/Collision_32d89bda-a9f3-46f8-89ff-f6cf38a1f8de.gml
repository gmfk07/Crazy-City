/// @description Pick Up Passenger
// Civilian collides with Player -> gets picked up and "follows" Player
// TODO
// Check if Player already has a passenger -> only pick up 1 passenger at a time
// Check if Player is at passenger's destination location -> drop off (remove)
x = obj_player.x
y = obj_player.y

if (destination[0] == x/GRID_SIZE && destination[1] == y/GRID_SIZE){
	show_debug_message("Arrived at: " + string(x/GRID_SIZE) + ", " + string(y/GRID_SIZE));
	instance_destroy();
}
