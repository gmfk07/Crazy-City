//move_gridpos(xx, yy, speed);
if (!moving)
{
	xx = argument0;
	yy = argument1;
	pspd = argument2;
	target_x = (xx * GRID_SIZE) + self.x;
	target_y = (yy * GRID_SIZE) + self.y;

	if (target_x > room_width - GRID_SIZE)
		target_x = room_width - GRID_SIZE;
	if (target_x < 0)
		target_x = 0;
	if (target_y > room_height - GRID_SIZE*2)
		target_y = room_height - GRID_SIZE*2;
	if (target_y < 0)
		target_y = 0;
		
	xspd = sign(xx)*pspd;
	yspd = sign(yy)*pspd;
	moving = true;
	grid_x = clamp(0, grid_x + xx, room_width/GRID_SIZE - 1);
	grid_y = clamp(0, grid_y + yy, room_height/GRID_SIZE - 2);
}