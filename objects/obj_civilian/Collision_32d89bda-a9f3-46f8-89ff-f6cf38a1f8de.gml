/// @description Pick Up Passenger
// Civilian collides with Player -> gets picked up and "follows" Player
// Check if Player already has a passenger -> only pick up 1 passenger at a time
// Check if Player is at passenger's destination location -> drop off (destroy flag and passenger obj)
x = obj_player.x
y = obj_player.y

// if player/civilian is adjacent to destination
// (either diff(x)==0, diff(y)==1; or diff(x)==1, diff(y)==0
if (abs(destination[0] - x/GRID_SIZE) + abs(destination[1] - y/GRID_SIZE) <= 1){
	show_debug_message("Arrived at: " + string(x/GRID_SIZE) + ", " + string(y/GRID_SIZE));
	obj_player.num_passengers = 0;
	rage_increase(-DELIVERY_RAGE_DECREASE);
	instance_destroy(obj_flag); // destroys all flags - may become an issue with multiple passengers
	instance_destroy();
	if (instance_number(obj_civilian) == 0) { // If out of civilians, make more
		generate_civilian_commuter();
	}
}
/*else {
	show_debug_message("Destination: " + string(destination[0]) + ", " + string(destination[1]));
	show_debug_message("Traveling: " + string(x/GRID_SIZE) + ", " + string(y/GRID_SIZE));
	show_debug_message("Num passengers: " + string(obj_player.num_passengers));
}*/
