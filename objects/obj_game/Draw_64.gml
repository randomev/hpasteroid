/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor

draw_set_alpha(0.3);

var xs = 0;
var yy = 0;
var ystep = 40;

draw_text(xs,0,"Level");
draw_text(xs+200,0,global.level);
yy += ystep;
draw_text(xs,yy,"Score");
draw_text(xs+200,yy,score);
yy += ystep;

draw_text(xs,yy,"Asteroids left");

var ac = " - lots of";
if (global.asteroid_count < 6)
{
	ac = " - not so many !"
}
if (global.asteroid_count<4)
{	
	ac = " - yeah, only few!!";
}
draw_text(xs+200,yy,ac);

yy += ystep;

draw_text(xs,yy,"Health");
xs = 200;
draw_healthbar(xs,yy,xs+100,yy+20,health,c_gray,c_red,c_green,1,1,1);

yy += ystep;
xs = 0;
draw_text(xs,yy,"Particle gun");
xs = 200;
draw_healthbar(xs,yy,xs+100,yy+20,global.smallammo,c_gray,c_red,c_blue,1,1,1);
yy += ystep;

xs = 0;
draw_text(xs,yy,"Blasts");
xs = 200;
draw_healthbar(xs,yy,xs+100,yy+20,global.bigammo,c_gray,c_black,c_yellow,1,1,1);

draw_set_alpha(1);
