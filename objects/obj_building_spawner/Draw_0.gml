draw_set_color(c_gray);
draw_rectangle(16, room_height, room_width-16, room_height-32, 0);
draw_set_color(c_red);
var frc = global.rage/RAGE_MAX;
draw_rectangle(16, room_height, frc*(room_width-32)+16, room_height-32, 0);