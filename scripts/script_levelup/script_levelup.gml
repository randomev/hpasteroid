randomize();

health = 100;
global.bigammo = 100;
global.smallammo = 100;
global.enemy_count = 0;
global.asteroid_count = 0;

// small asteroids
repeat(global.level * random_range(5,10))
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
	new_ast.speed = random_range(0.4,1.4);
}

// big asteroids
repeat(global.level * random_range(1,3))
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
	new_ast.sprite_index = spr_asteroid_big;
	new_ast.direction = random_range(0,359);
	new_ast.image_angle = random_range(0,359);
	new_ast.image_alpha = random_range(0.5,1);
	new_ast.speed = random_range(0.4,1.4);
}

instance_create_layer(random_range(100,room_width-10),random_range(100,room_height-10),"Instances",obj_smallammosupply);

repeat(global.level)
{
	var xx = choose(
		random_range(200, room_width * 0.3),
		random_range(room_width * 0.7, room_width)		
		);
	var yy = choose(
		random_range(200, room_height * 0.3),
		random_range(room_height * 0.7, room_height)		
		);

	instance_create_layer(yy,xx,"Instances",obj_alienship);
	global.enemy_count += 1;

	instance_create_layer(random_range(100,room_width-10),random_range(100,room_height-10),"Instances",obj_bigammosupply);
}


