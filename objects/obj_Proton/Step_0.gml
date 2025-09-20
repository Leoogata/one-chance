x += xSpeed;

if (x > room_width + sprite_width) {
	global.counter_lost_points += 1;
    instance_destroy();
}

