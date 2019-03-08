//can_place_road(gridposx, gridposy)
//in development!
var gridposx = argument0;
var gridposy = argument1;
ul = road_exists(gridposx-1, gridposy-1);
u = road_exists(gridposx, gridposy-1);
ur = road_exists(gridposx+1, gridposy-1);
l = road_exists(gridposx-1, gridposy);
r = road_exists(gridposx+1, gridposy);
dl = road_exists(gridposx-1, gridposy+1);
d = road_exists(gridposx, gridposy+1);
dr = road_exists(gridposx+1, gridposy+1);
/*
show_debug_message("ul:" + string(ul));
show_debug_message("u:" + string(u));
show_debug_message("ur:" + string(ur));
show_debug_message("l:" + string(l));
show_debug_message("dl:" + string(dl));
show_debug_message("d:" + string(d));
show_debug_message("dr:" + string(dr));
show_debug_message("r:" + string(r));
*/
tri1 = l && ul && u;
tri2 = u && ur && r;
tri3 = r && dr && d;
tri4 = d && dl && l;

return !(tri1 || tri2 || tri3 || tri4);