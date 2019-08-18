/// @description Insert description here
// You can write your code in this editor

if (room == room_start)
{
	return;
}

if (health < 50)
{
	global.playerhasshields = false;
	sprite_index = spr_ship_noshields; // no shields
}

if (health >= 50)
{
	global.playerhasshields = true;
	//if (sprite_index != spr_ship)
	//{
	//	sprite_index = spr_ship; // with shields
	//}
	// 0 = full shield
	// 5 = almost no shields
	
	
	if (health >= 50 && health < 60)
	{
		sprite_index = spr_ship50;
	}

	if (health >= 60 && health < 70)
	{
		sprite_index = spr_ship70;
	}

	if (health >= 70 && health < 80)
	{
		sprite_index = spr_ship80;
	}

	if (health >= 80 && health < 90)
	{
		sprite_index = spr_ship90;
	}
	if (health >= 90)
	{
		sprite_index = spr_ship100;
	}

}

if (keyboard_check(vk_up) && speed<5)
{
	speed += 1;
	effect_create_above(ef_star,x,y,0.4,c_yellow);
}

if (keyboard_check_pressed(vk_down) && speed > -5)
{
	speed -= 0.5;
	var xx = lengthdir_x(15,direction);
	var yy = lengthdir_y(15,direction);
	effect_create_above(ef_spark,x + xx,y + yy,0.3,c_white);
	effect_create_above(ef_spark,x + xx,y + yy,0.2,c_blue);
}

if (keyboard_check(vk_left))
{
	direction += 5;
}

if (keyboard_check(vk_right))
{
	direction -= 5;	
}

if (keyboard_check_pressed(vk_space) && global.smallammo>0)
{
	global.smallammo -= 3;

	var bul = instance_create_layer(x,y,"Instances",obj_bullet);
	bul.direction = direction;
	bul.speed = speed + 10;
}

if ((keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("Z"))) && global.bigammo>0)
{
	global.bigammo -= 10;
	var i = 1;
	for (xx = 0;xx < blast_w[i];xx++)
	{
		for (yy = 0;yy < blast_h[i];yy++)
		{
			// only create if there is pixel here
			if (blast_pixeldata[i, xx+(yy*blast_w[i])] > -1)
			{
				//var p = sprite_get_pixel_color(spr_mine1, xx,yy);
				var bul = instance_create_layer(x + xx - blast_w[i]/2, y + yy - blast_h[i]/2,"Instances",obj_bigammo);
				
				bul.image_blend = blast_pixeldata[i, xx+(yy*blast_w[i])];
				
				var lx = lengthdir_x(40+speed,direction);
				var ly = lengthdir_y(40+speed,direction);
				var r = random_range(0,4);
				var d = point_direction(0,0,xx - blast_w[i]/2 + lx , yy - blast_h[i]/2 + ly);
				var dis = point_distance(0,0,xx - blast_w[i]/2 + lx, yy - blast_h[i]/2 + ly);
				
				bul.direction = d;
				bul.speed = speed + dis/10.0 + 0.1; // * random_range(1, 10);
			}
		}
	}
}

/*
if (keyboard_check_pressed(ord("Z")))
{

	var i = 0; // small blast
	for (xx = 0;xx < blast_w[i];xx++)
	{
		for (yy = 0;yy < blast_h[i];yy++)
		{
			// only create if there is pixel here
			if (blast_pixeldata[i, xx+(yy*blast_w[i])] > -1)
			{
				//var p = sprite_get_pixel_color(spr_mine1, xx,yy);
				var bul = instance_create_layer(x + xx - blast_w[i]/2, y + yy - blast_h[i]/2,"Instances",obj_bigammo);
				
				bul.image_blend = blast_pixeldata[i, xx+(yy*blast_w[i])];
				// only blast outward, not forward! 
				var lx = 0; // lengthdir_x(40+speed,direction);
				var ly = 0; //lengthdir_y(40+speed,direction);

				var r = random_range(0,4);
				var d = point_direction(0,0,xx - blast_w[i]/2 + lx , yy - blast_h[i]/2 + ly);
				var dis = point_distance(0,0,xx - blast_w[i]/2 + lx, yy - blast_h[i]/2 + ly);
				
				bul.direction = d;
				bul.speed = speed + dis/2.0 + 0.1; // * r; // * random_range(1, 10);
			}
		}
	}

}
*/

image_angle = direction;

move_wrap(true,true,sprite_height/2)
