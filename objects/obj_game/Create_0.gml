/// @description Insert description here
// You can write your code in this editor
randomize();

draw_set_font(font0);

health = 100;
score = 0;
global.bigammo = 100;
global.smallammo = 100;

repeat(40)
{
	var xx = choose(
		random_range(10, room_width * 0.3),
		random_range(room_width * 0.7, room_width)		
		);
	var yy = choose(
		random_range(10, room_height * 0.3),
		random_range(room_height * 0.7, room_height)		
		);
	
	var new_ast = instance_create_layer(xx,yy,"Instances", obj_asteroid);
	new_ast.direction = random_range(0,359);
	new_ast.image_angle = random_range(0,359);
	new_ast.image_alpha = random_range(0.5,1);
	new_ast.speed = random_range(0,1);
}

instance_create_layer(random_range(10,room_width-10),random_range(10,room_height-10),"Instances",obj_bigammosupply);
draw_text(100,100,string(instance_count));