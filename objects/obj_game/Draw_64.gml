/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor

var xs = 0;
var yy = 0;
var ystep = 30;

draw_text(xs,0,"Level");
draw_text(xs+200,0,global.level);
yy += ystep;
draw_text(xs,yy,"Score");
draw_text(xs+200,yy,score);
yy += ystep;

draw_text(xs,yy,"Asteroids left");
draw_text(xs+200,yy,global.asteroid_count);

yy += ystep;

draw_text(xs,yy,"Health");
xs = 200;
draw_healthbar(xs,yy,xs+100,yy+20,health,c_black,c_red,c_green,0,1,1);

yy += ystep;
xs = 0;
draw_text(xs,yy,"Particle gun");
xs = 200;
draw_healthbar(xs,yy,xs+100,yy+20,global.smallammo,c_black,c_red,c_blue,1,0,1);
yy += ystep;

xs = 0;
draw_text(xs,yy,"Blasts");
xs = 200;
draw_healthbar(xs,yy,xs+100,yy+20,global.bigammo,c_black,c_black,c_yellow,1,0,1);

