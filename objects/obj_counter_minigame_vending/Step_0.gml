countdown -= delta_time / 1000000;


if (countdown < 0) {
    countdown = 0;
	
	room_restart();
	
}
