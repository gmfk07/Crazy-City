event_inherited();

if (x % GRID_SIZE == 0 && y % GRID_SIZE == 0 && !road_exists(x/GRID_SIZE, y/GRID_SIZE))
{
	newroad = instance_create_depth(x, y, 10, obj_road);
	newroad.grid_x = x/GRID_SIZE;
	newroad.grid_y = y/GRID_SIZE;
	show_debug_message(string(x/GRID_SIZE) + " " + string(y/GRID_SIZE));
}

if (road_mode) {
	sprite_index = spr_player_road_mode;
} else {
	sprite_index = spr_player;
}