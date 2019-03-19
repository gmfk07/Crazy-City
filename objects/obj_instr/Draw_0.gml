/// @description draw instruction screen
// You can write your code in this editor
draw_self();
//draw_set_valign(fa_middle);
draw_text(x, y, message);

// anger progression
draw_sprite(spr_civilian_happy, 1, 699, 205);
draw_sprite(spr_civilian_angry, 1, 739, 205);
draw_sprite(spr_civilian_furious, 1, 779, 205);

// toggle road mode
draw_sprite(spr_road_mode_icon, 1, 500, 245);
draw_sprite(spr_road_mode_icon, 0, 540, 245);

// tree
draw_sprite(spr_tree, 0, 630, 285);

// commuter
draw_sprite(spr_commuter, 0, 610, 365);