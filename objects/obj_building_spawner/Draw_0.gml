draw_set_color(c_green);
draw_rectangle(16, room_height, room_width-16, room_height-32, 0);
draw_set_color(c_gray);
var frc = global.rage/RAGE_MAX;
draw_rectangle(room_width-16, room_height, -1*frc*(room_width-32)+room_width-16, room_height-32, 0);