/// @put rocks everywhere on the map
var nx = room_width/GRID_SIZE
var ny = room_height/GRID_SIZE
for (var ix = 0; ix<nx; ix += 1){
	for (var iy = 0; iy < ny; iy +=1){
		instance_create_depth(ix*GRID_SIZE, iy*GRID_SIZE, 1, obj_rock )
	}
}
