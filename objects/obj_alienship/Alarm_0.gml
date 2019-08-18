/// @description Insert description here
// You can write your code in this editor

if (room == room_gameover)
{
	return;
}

alarm_set(0,random_range(0.2,2.0)*room_speed);
var b = instance_create_layer(x,y,"Instances",obj_alienbullet);

var d = point_direction(x,y,obj_playership.x,obj_playership.y);

b.direction = d;
b.speed = 5;

alarm_set(0,random_range(0.2,2.0)*room_speed);



