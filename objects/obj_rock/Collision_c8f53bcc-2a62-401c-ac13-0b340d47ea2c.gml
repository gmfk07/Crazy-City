/// destroy the rock once player cross it 
// You can write your code in this editor
mp_grid_clear_cell(global.ai_grid,x/GRID_SIZE,y/GRID_SIZE);
instance_destroy(self)
