/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor

var xs = 0;
var ys = 40;

draw_text(xs,0,"Score");
draw_text(xs,20,score);

draw_text(xs,40,"Health");
xs = 200;
draw_healthbar(xs,ys,xs+100,ys+20,health,c_green,c_red,c_green,0,1,1);

ys = 80;
xs = 0;
draw_text(xs,ys,"Particle gun");
xs = 200;
draw_healthbar(xs,ys,xs+100,ys+20,global.smallammo,c_purple,c_red,c_green,1,0,1);

ys = 120;
xs = 0;
draw_text(xs,ys,"Love left");
xs = 200;
draw_healthbar(xs,ys,xs+100,ys+20,global.bigammo,c_green,c_red,c_green,1,0,1);
