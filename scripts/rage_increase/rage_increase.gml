//rage_increase(amount)
global.rage += argument0;
global.rage = median(RAGE_MAX, global.rage + argument0, 0);
if (global.rage == RAGE_MAX)
{
	show_message("The town descends into chaos. Game over!");
	game_restart();
}