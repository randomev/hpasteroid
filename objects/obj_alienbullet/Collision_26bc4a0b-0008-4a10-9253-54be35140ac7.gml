/// @description Insert description here
// You can write your code in this editor
if (global.playerhasshields)
{
	health -= 5;
	effect_create_above(ef_explosion, x, y, 0.6, c_blue);
} 
else 
{
	health -= 15;	
	effect_create_above(ef_explosion, x-3, y-2, 1.0, c_red);
	effect_create_above(ef_smoke, x+2, y-1, 1.0, c_yellow);
}
instance_destroy();
