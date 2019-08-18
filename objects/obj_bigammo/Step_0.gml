/// @description Insert description here
// You can write your code in this editor
lifetime--;

if (lifetime<room_speed)
{
	image_alpha = image_alpha-1/room_speed;
	if (image_alpha<0.5)
	{
		instance_destroy();
	}
}