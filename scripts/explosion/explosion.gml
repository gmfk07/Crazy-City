//explosion(gridpos_x, gridpos_y, radius)
gridpos_x = argument0;
gridpos_y = argument1;
radius = argument2;

//add an explosion effect
effect_create_above(ef_explosion, (gridpos_x+0.5)*GRID_SIZE , (gridpos_y+0.5)*GRID_SIZE, 2, c_red);
for (var i=0; i<room_width/GRID_SIZE; i++)
{
	for (var j=0; j<room_height/GRID_SIZE; j++)
	{
		if ((abs(j-gridpos_y) + abs(i-gridpos_x)) <= radius)
		{
			with (obj_road)
			{
				if (grid_x == i && grid_y == j){
					if commuter_exists(grid_x,grid_y)
					//if there is a commuter on the path, destroy the commuter
					{
						show_debug_message("A commuter should be destroyed");
						instance_destroy(instance_nearest(x,y,obj_commuter));
					}
					instance_change(obj_rock,false);
				}
			}
		}
	}
}

//update trees in area after road and commuter destruction
for (var i=0; i<room_width/GRID_SIZE; i++)
{
	for (var j=0; j<room_height/GRID_SIZE; j++)
	{
		if ((abs(j-gridpos_y) + abs(i-gridpos_x)) <= radius + 2)
		{
			update_tree(i, j);
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
