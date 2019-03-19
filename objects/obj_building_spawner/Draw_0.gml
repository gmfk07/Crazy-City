rect_origin_x = 16;
rect_origin_y = room_height;
rect_width = room_width - 32 - 32; // for road mode icon
rect_height = 32;
rect_max_x = room_width - 16 - 32; // for road mode icon

draw_set_color(c_green);
//draw_rectangle(16, room_height, room_width-16, room_height-32, 0);
draw_rectangle(rect_origin_x, rect_origin_y,
				rect_origin_x+rect_width, room_height - rect_height, 0);
draw_set_color(c_gray);
var frc = global.rage/RAGE_MAX;
//draw_rectangle(room_width-16, room_height, -1*frc*(room_width-32)+room_width-16, room_height-32, 0);
draw_rectangle(rect_max_x, room_height, rect_max_x - frc*(rect_width), room_height - rect_height, 0);

// text label
draw_set_color(c_white);
draw_text(rect_origin_x+64, rect_origin_y-28, "City Happiness");