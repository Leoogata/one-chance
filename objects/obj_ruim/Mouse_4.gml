


if (count == 0){
	global.inimigosMortos++
	show_debug_message("Inimigo morto");
	sprite_index = spriteOK;
	audio_play_sound(snd_correct_virus, 1, false);
}

count++;

if (count == 2){
	global.vidas--;
	instance_destroy()
	if (global.vidas == 0){
	scr_explosao()	
}
}