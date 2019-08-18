/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_space)
{
	room_goto(room_level1);
}

if (keyboard_check_pressed(vk_escape))
{
	game_end();
}
