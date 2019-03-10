//commuter_exists(xgrid, ygrid)
//check wether there is a commuter at x,y grid position
var xgrid = argument0;
var ygrid = argument1;

var com = instance_nearest(xgrid*GRID_SIZE+0.5*GRID_SIZE, ygrid*GRID_SIZE+0.5*GRID_SIZE, obj_commuter);
if com != noone{
	if (com.grid_x == xgrid && com.grid_y == ygrid){
		return true;
		}
	else{
		return false;
	}
}
else
{
	return false;
}