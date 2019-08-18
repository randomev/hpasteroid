/// @description Insert description here
// You can write your code in this editor

if (room==room_gameover)
{
	return;
}

if instance_exists(obj_health)
{
	return;
}

var xx = choose(
random_range(100, room_width * 0.3),
random_range(room_width * 0.7, room_width)		
);
var yy = choose(
random_range(100, room_height * 0.3),
random_range(room_height * 0.7, room_height)		
);

instance_create_layer(xx,yy,"Instances",obj_health);

alarm_set(0,random_range(10*room_speed,40*room_speed));
