countdown -= delta_time / 1000000;

if (countdown < 0) {
	fade_active = true;

	if (fade_active) {
	    fade_alpha += 0.01; 

	    if (fade_alpha >= 1) {
	        fade_alpha = 1;
	        room_restart();	
	    }
	}
	
}
