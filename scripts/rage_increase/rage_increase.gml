//rage_increase(amount)
global.rage += argument0;
global.rage = median(RAGE_MAX, global.rage + argument0, 0);