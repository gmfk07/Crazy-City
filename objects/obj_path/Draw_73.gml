/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_f1)
{
draw_set_alpha(0.1);
draw_set_colour(c_white);
mp_grid_draw(global.ai_grid);
for (var i = 0; i < room_width; i += 64;)
    {
    draw_line_width(i, 0, i, room_height, 3);
    }
for (var j = 0; j < room_width; j += 64;)
    {
    draw_line_width(0, j, room_width, j, 3);
    }
draw_set_alpha(1);
with (obj_commuter){
	draw_path(path, x, y, true);
}
}   