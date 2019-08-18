/// @description Insert description here
// You can write your code in this editor
effect_create_above(ef_explosion, x, y, 2.0, c_purple);
alienhealth -= 1;
instance_destroy(other);
if (alienhealth<0)
{
	instance_destroy();
}