anger += anger_per_second/room_speed;
if (anger >= angry_threshold)
{
	image_index = 1;
	rage_increase(RAGE_PER_SECOND/room_speed);
}
if (anger >= seething_threshold)
{
	image_index = 2;
	rage_increase(RAGE_PER_SECOND/room_speed);
}
if (anger >= 1)
{
	instance_destroy();
	explosion(round(x/GRID_SIZE), round(y/GRID_SIZE), 3);
}