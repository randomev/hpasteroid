/// @description Insert description here
// You can write your code in this editor
if (health<0 && room != room_gameover)
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