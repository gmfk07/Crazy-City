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
					if !commuter_exists(x,y)
					//if there is a commuter on the path, do not destroy the road
					{
					instance_change(obj_rock,false);		
					}
			}
		}
	}
}

mp_grid_add_instances(global.ai_grid,obj_rock,false);
//rebuild all path for commuters
with(obj_commuter)
{	
	//restart the path from the current position
	pos = 0;
	if mp_grid_define_path(x,y,desX,desY,path)
	{
		show_debug_message("A new path towards the destination");
	}
	else
	{
		show_debug_message("No path to the destination now");
	}
}
