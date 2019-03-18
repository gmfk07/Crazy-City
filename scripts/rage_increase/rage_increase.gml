//rage_increase(amount)
global.rage += argument0;
global.rage = median(RAGE_MAX, global.rage + argument0, 0);
if (global.rage == RAGE_MAX)
{
	show_message("The town descends into chaos. Game over!\nYou survived for " + string(floor(obj_player.time/1000000)) + " seconds and dropped off " + string(obj_player.pickedup) + " passengers!");
	game_restart();
}