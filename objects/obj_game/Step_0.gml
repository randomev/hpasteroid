/// @description Insert description here
// You can write your code in this editor

var gameover = false;

if (!instance_exists(obj_smallammosupply) && global.smallammo <= 0)
{
	gameover = true;
}

if (health<0)
{
	gameover = true;
}

if (gameover && room != room_gameover)
{
	room_goto(room_gameover);
}

if (keyboard_check_pressed(vk_enter) && room = room_gameover)
{
	game_restart();
}

if (keyboard_check_pressed(vk_escape))
{
	game_end();
}

if (!instance_exists(obj_asteroid))
{
	global.level += 1;
	script_levelup();
}