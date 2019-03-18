/// @description Check for Player pickup

player_x = obj_player.x/GRID_SIZE
player_y = obj_player.y/GRID_SIZE
my_x = x/GRID_SIZE
my_y = y/GRID_SIZE

// only perform check if player doesn't have a passenger
if (obj_player.num_passengers == 0) {
	
	// check if player is adjacent to civilian
	// (either diff(x)==0, diff(y)==1; or diff(x)==1, diff(y)==0
	if (abs(player_x - my_x) + abs(player_y - my_y) == 1)
	{
		// Player has picked up a passenger
		x = obj_player.x
		y = obj_player.y
		
		audio_play_sound(snd_pickup, 0, 0);
		is_picked_up = true;
		obj_player.num_passengers = 1;
	
		// spawn a flag at destination
		var newFlag = instance_create_layer((destination[0]+1)*GRID_SIZE, destination[1]*GRID_SIZE, "Instances", obj_flag);
		obj_player.pickedup += 1;	
	}
}