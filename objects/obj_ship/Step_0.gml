/// @description Insert description here
// You can write your code in this editor


if (keyboard_check(vk_up))
{
	speed += 1;
}

if (keyboard_check(vk_down))
{
	speed -= 1;
}

if (keyboard_check(vk_left))
{
	direction += 3;
}

if (keyboard_check(vk_right))
{
	direction -= 3;	
}

if (keyboard_check(vk_space))
{
	var bul = instance_create_layer(x,y,"Instances",obj_bullet);
	bul.direction = direction;
	bul.speed = 2;
}

if (keyboard_check_pressed(ord("A")))
{
	
	for (xx = 0;xx < w;xx++)
	{
		for (yy = 0;yy < h;yy++)
		{
			// only create if there is pixel here
			if (pp[xx+(yy*w)] > -1)
			{
				//var p = sprite_get_pixel_color(spr_mine1, xx,yy);
				var bul = instance_create_layer(x + xx - w/2, y + yy - h/2,"Instances",obj_pixel);
				
				bul.image_blend = pp[xx+(yy*w)];
				
				var lx = lengthdir_x(40,direction);
				var ly = lengthdir_y(40,direction);
				var r = random_range(1,10);
				var d = point_direction(0,0,xx - w/2 + lx , yy - h/2 + ly);
				var dis = point_distance(0,0,xx - w/2 + lx, yy - h/2 + ly);
				
				bul.direction = d;
				bul.speed = speed + dis/10.0 + 0.1 * r; // * random_range(1, 10);
			}
		}
	}
}

if (keyboard_check_pressed(ord("Z")))
{
	var p = array_create(360,0);
	p[0] = 1;
	p[45] = 1;
	p[90] = 1;
	p[135] = 1;
	p[180] = 1;
	p[225] = 1;
	p[270] = 1;
	p[315] = 1;
	p[360] = 1;

	var i=0;
	repeat(360)
	{
		if (p[i] == 1)
		{
			var bul = instance_create_layer(x,y,"Instances",obj_bullet);
			bul.direction = i;
			bul.speed = 2;
		}
		i++;
	}
}

image_angle = direction;

move_wrap(true,true,sprite_height/2)
