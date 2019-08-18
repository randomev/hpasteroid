/// @description Insert description here
// You can write your code in this editor
randomize();

draw_set_font(font0);

health = 100;
score = 0;
global.bigammo = 100;
global.smallammo = 100;
global.level = 1;
global.enemy_count = 0;
global.asteroid_count = 0;

script_levelup();

alarm_set(0,random_range(10*room_speed,40*room_speed));