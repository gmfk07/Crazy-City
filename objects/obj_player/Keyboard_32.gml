/// @description Toggle road mode
var half_second_in_microseconds = 0.5 * 1000000;
if (get_timer() - road_mode_last_toggled_time > half_second_in_microseconds) {
	road_mode = !road_mode;
	road_mode_last_toggled_time = get_timer();
}

if (road_mode) 
{
	sprite_index = spr_player_road_mode;
	// switch mode_icon to blinking
	//mode_icon.image_speed = 1;
	mode_icon.image_index = 0;
}
else
{
	sprite_index = spr_player;
	// switch mode_icon to "off"
	mode_icon.image_index = 1;
	mode_icon.image_speed = 0;
}