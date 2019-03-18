// update_tree(gridposx, gridposy)
var gridposx = argument0;
var gridposy = argument1;
var rock;
if (rock_exists(gridposx, gridposy)) {
	rock = get_rock(gridposx, gridposy);
} else {
	return;
}

ul = road_exists(gridposx-1, gridposy-1);
u = road_exists(gridposx, gridposy-1);
ur = road_exists(gridposx+1, gridposy-1);
l = road_exists(gridposx-1, gridposy);
r = road_exists(gridposx+1, gridposy);
dl = road_exists(gridposx-1, gridposy+1);
d = road_exists(gridposx, gridposy+1);
dr = road_exists(gridposx+1, gridposy+1);

tri1 = l && ul && u;
tri2 = u && ur && r;
tri3 = r && dr && d;
tri4 = d && dl && l;

if (tri1 || tri2 || tri3 || tri4) {
	rock.visible = true;
} else {
	rock.visible = false;
}