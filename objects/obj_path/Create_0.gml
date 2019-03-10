/// create a path object
global.ai_grid = mp_grid_create(0, 0, room_width/GRID_SIZE, room_height/GRID_SIZE, GRID_SIZE, GRID_SIZE);
mp_grid_add_instances(global.ai_grid, obj_rock, false);
