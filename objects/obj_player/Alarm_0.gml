/// @create an afterimage 
if (after_image_speed > 1){
instance_create_depth(x, y, depth, obj_afterimage);
}
alarm[0] = room_speed / after_image_speed;