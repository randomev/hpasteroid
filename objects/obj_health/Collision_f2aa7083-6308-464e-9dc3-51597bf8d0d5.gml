/// @description Insert description here
// You can write your code in this editor
health += 50;

if (health>100)
{
	health = 100;
}
effect_create_above(ef_ring,x,y,1,c_red);
instance_destroy();