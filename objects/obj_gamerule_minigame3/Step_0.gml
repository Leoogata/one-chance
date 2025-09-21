if(global.counter_lost_points >= 3 && !fade_active) {
	fade_active = true;
}

if (fade_active) {
    fade_alpha += 0.01; 

    if (fade_alpha >= 1) {
        fade_alpha = 1;
        game_restart();	
    }
}