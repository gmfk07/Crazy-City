/// @description Insert description here
// You can write your code in this editor

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

mp_potential_step_object(x_goto, y_goto, 3 , obj_rock);
var _dif = angle_difference(point_direction(x, y, x_goto, y_goto), image_angle);
image_angle += (_dif div 45);