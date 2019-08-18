/// @description Insert description here
// You can write your code in this editor
randomize();

draw_set_font(font0);

global.level = 1;
score = 0;

script_levelup();

alarm_set(0,random_range(10*room_speed,40*room_speed));