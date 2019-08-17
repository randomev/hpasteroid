
/// sprite_get_pixel_color(sprite, x, y);

var S;
S = surface_create(sprite_get_width(argument0), sprite_get_height(argument0));
surface_set_target(S);

draw_clear(c_black);
draw_sprite(argument0, 0, 0, 0);
//draw_sprite(argument0, 0, argument1, argument2);

var Color = surface_getpixel(S, argument1, argument2);

surface_reset_target();
surface_free(S);

return Color;