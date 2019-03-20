anger += anger_per_second/room_speed;
if (anger >= angry_threshold && anger < seething_threshold)
{
	//image_index = 1; // changed to separate sprites for animation
	sprite_index = spr_civilian_angry;
	rage_increase(RAGE_PER_SECOND_ANGRY/room_speed);
}
else if (anger >= seething_threshold)
{
	//image_index = 2; // changed to separate sprites for animation
	sprite_index = spr_civilian_furious;
	rage_increase(RAGE_PER_SECOND_SEETHING/room_speed);
} else if (anger < angry_threshold) {
	sprite_index = spr_civilian_happy;
}

if (anger >= 1)
{
	show_debug_message("EXPLODE: " + string(x/GRID_SIZE) + ", " + string(y/GRID_SIZE));
	audio_play_sound(snd_explode, 0, 0);
	// check if this civilian is being carried by player
	// if so, player should have 0 passengers, flag should despawn
	if (is_picked_up)
	{
		obj_player.num_passengers = 0;
		instance_destroy(obj_flag);
	}
	instance_destroy();
	explosion(round(x/GRID_SIZE), round(y/GRID_SIZE), 3);
}