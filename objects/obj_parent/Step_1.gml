if (moving)
{
	if (xspd > 0)
		x = min(target_x, x+xspd);
	if (xspd < 0)
		x = max(target_x, x+xspd);
	if (yspd > 0)
		y = min(target_y, y+yspd);
	if (yspd < 0)
		y = max(target_y, y+yspd);
	
	if (x == target_x)
		xspd = 0;
	if (y == target_y)
		yspd = 0;
	if (xspd == 0 && yspd == 0)
		moving = false;
}