/// @description Pick Up Passenger
// Civilian collides with Player -> gets picked up and "follows" Player
// TODO
// Check if Player already has a passenger -> only pick up 1 passenger at a time
// Check if Player is at passenger's destination location -> drop off (remove)
x = obj_player.x + 0.5*GRID_SIZE
y = obj_player.y + 0.5*GRID_SIZE
//drop off passenger nearby
if ( (abs(destination[0]*GRID_SIZE - x)+ abs(destination[1]*GRID_SIZE - y))<=GRID_SIZE){
	show_debug_message("Arrived at: " + string(x div GRID_SIZE) + ", " + string(y div GRID_SIZE));
	instance_destroy();
}
