// Inherit the parent event
event_inherited();
set_gridpos(6,6);
num_passengers = 0;
road_mode_last_toggled_time = 0;
road_mode = true;
audio_play_sound(snd_crazy_city, 100, true);
image_index = 0;
image_speed = 0;

time = 0;
pickedup = 0;

// create road mode icon
mode_icon = instance_create_layer(room_width - GRID_SIZE - 6, room_height - GRID_SIZE,
								"Instances", obj_road_mode_icon);
mode_icon.image_speed = 0;

//create an after image
after_image_speed = 1;
instance_create_depth(x, y, depth, obj_afterimage);
alarm[0] = room_speed / after_image_speed; //Another arbitrary number, this would generate the afterimage 2 times per second