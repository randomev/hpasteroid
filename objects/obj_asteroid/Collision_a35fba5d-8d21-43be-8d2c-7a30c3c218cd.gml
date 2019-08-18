/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);

if (sprite_index == spr_asteroid_small)
{

	score += 1;

	effect_create_above(ef_explosion, x, y, 1.5, c_gray);
	effect_create_above(ef_explosion, x-13, y+10, 0.5, c_white);

	instance_destroy();
	global.asteroid_count -= 1;
}

if (sprite_index == spr_asteroid_big)
{
	
	repeat(3)
	{
		var ast = instance_create_layer(x,y,"Instances",obj_asteroid);
		ast.sprite_index = spr_asteroid_small;
		ast.direction = random_range(0,360);
		ast.speed = random_range(0.9, 1.5);
	}
	effect_create_above(ef_explosion, x, y, 0.4, c_gray);

	sprite_index = spr_asteroid_small;
}

