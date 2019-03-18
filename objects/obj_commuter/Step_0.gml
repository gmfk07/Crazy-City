/// @description Insert description here
// You can write your code in this editor
grid_x = x div GRID_SIZE;
grid_y = y div GRID_SIZE;
//stop moving when player is nearby
if !((abs(obj_player.grid_x - grid_x)+abs(obj_player.grid_y - grid_y))<=1){
	if point_distance(x, y, x_goto, y_goto) < GRID_SIZE
	{
	pos ++;
	if pos == path_get_number(path)
	    {
	    instance_destroy(self);
	    }
	else
	    {
	    x_goto = path_get_point_x(path, pos);
	    y_goto = path_get_point_y(path, pos); 
	    }
	}

	if point_distance(x,y,desX,desY) <= GRID_SIZE
	{
		instance_destroy(self);
	}
	//mp_potential_step(x_goto,y_goto,6,false);
	mp_potential_step_object(x_goto, y_goto, 1 , obj_rock);
	var _dif = angle_difference(point_direction(x, y, x_goto, y_goto), image_angle);
	image_angle += clamp(-3,_dif,3);
}