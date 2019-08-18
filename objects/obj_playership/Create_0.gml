/// @description Insert description here
// You can write your code in this editor
friction = 0.01

// this initializes all the different blast types and pre-reads the pixel data
// for later usage (such as in obj_ship.step when firing)

global.playerhasshields = true;

// no shield animation
//image_speed = 0;

sprite_index = spr_ship;

// all the blast types - new blast type is just a new sprite
blasts[0] = spr_blast1;
blasts[1] = spr_blast2;

// loop all blasts
for (i = 0; i < array_length_1d(blasts); i++)
{
	// get dimensions for sprite
	blast_h[i] = sprite_get_height(blasts[i]);
	blast_w[i] = sprite_get_width(blasts[i]);

	// loop vertical and horizontal pixels of sprite
	for (xx = 0;xx < blast_w[i];xx++)
	{
		for (yy = 0;yy < blast_h[i];yy++)
		{
			// get color at this pixel
			var a = sprite_get_pixel_color(blasts[i], xx,yy);
			var c = color_get_value(a);
			// only if there is actual color at the pixe
			if c > 0
			{
				blast_pixeldata[i, xx+(yy* blast_w[i])] = a;
			} else {
				// no actual color, mark so that we know it should not
				// be drawn when actually blasting
				blast_pixeldata[i, xx+(yy*blast_w[i])] = -1;			
			}
		}
	}
}
