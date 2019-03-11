//explosion(gridpos_x, gridpos_y, radius)
gridpos_x = argument0;
gridpos_y = argument1;
radius = argument2;

for (var i=0; i<room_width/GRID_SIZE; i++)
{
	for (var j=0; j<room_height/GRID_SIZE; j++)
	{
		if ((abs(j-gridpos_y) + abs(i-gridpos_x)) <= radius)
		{
			with (obj_road)
			{
				if (grid_x == i && grid_y == j)
					instance_destroy();
			}
		}
	}
}