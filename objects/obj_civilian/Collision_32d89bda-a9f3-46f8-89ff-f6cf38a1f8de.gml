/// @description Pick Up Passenger
// Civilian collides with Player -> gets picked up and "follows" Player
// Check if Player already has a passenger -> only pick up 1 passenger at a time
<<<<<<< HEAD
// Check if Player is at passenger's destination location -> drop off (remove)
x = obj_player.x + 0.5*GRID_SIZE
y = obj_player.y + 0.5*GRID_SIZE
//drop off passenger nearby
if ( (abs(destination[0]*GRID_SIZE - x)+ abs(destination[1]*GRID_SIZE - y))<=GRID_SIZE){
	show_debug_message("Arrived at: " + string(x div GRID_SIZE) + ", " + string(y div GRID_SIZE));
=======
// Check if Player is at passenger's destination location -> drop off (destroy flag and passenger obj)
x = obj_player.x
y = obj_player.y

// if player/civilian is adjacent to destination
// (either diff(x)==0, diff(y)==1; or diff(x)==1, diff(y)==0
if (abs(destination[0] - x/GRID_SIZE) + abs(destination[1] - y/GRID_SIZE) <= 1){
	show_debug_message("Arrived at: " + string(x/GRID_SIZE) + ", " + string(y/GRID_SIZE));
	obj_player.num_passengers = 0;
	instance_destroy(obj_flag); // destroys all flags - may become an issue with multiple passengers
>>>>>>> master
	instance_destroy();
}
/*else {
	show_debug_message("Destination: " + string(destination[0]) + ", " + string(destination[1]));
	show_debug_message("Traveling: " + string(x/GRID_SIZE) + ", " + string(y/GRID_SIZE));
	show_debug_message("Num passengers: " + string(obj_player.num_passengers));
}*/

