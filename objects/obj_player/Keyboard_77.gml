/// @description Toggle road mode
var half_second_in_microseconds = 0.5 * 1000000;
if (get_timer() - road_mode_last_toggled_time > half_second_in_microseconds) {
	road_mode = !road_mode;
	road_mode_last_toggled_time = get_timer();
}