/// @description Insert description here
// You can write your code in this editor
friction = 0.1

h = sprite_get_height(spr_mine1);
w = sprite_get_width(spr_mine1);
//var p;
for (xx = 0;xx < w;xx++)
{
	for (yy = 0;yy < h;yy++)
	{
		var a = sprite_get_pixel_color(spr_mine1, xx,yy);
		pp[xx+(yy*w)] = a;
	}
}