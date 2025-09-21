if(keyboard_check_pressed(vk_space)){
	if (count_space = 0){	
		audio_play_sound(snd_music, 1, true);
		global.virusGameIniciou = true;
		count_space++;
		with (obj_transicao) {
			modo = "fade_in";
		}
	}
}

if (global.virusGameIniciou){	
	for (var fase = 1; fase <= array_length(numeroItens) - 1; fase++){
		if (todosInimigosCriados == false){
			if (global.faseAtual == fase){
			itensNum = numeroItens[fase]
			viloesNum = itensNum - fase
			numeroDeViloes = fase * 2
			for (var i = 1; i <= itensNum - fase; i++){
				var posicaoInimigoX = random_range(25, 270)
				var posicaoInimigoY = random_range(25, 140)
				var randomSprite = random_range(0, 4)
				instancia = instance_create_layer(posicaoInimigoX, posicaoInimigoY, "Instances", obj_virus)
				instancia.sprite_index = sprites[randomSprite]
				numeroIni++
			}
			for (var j = 1; j <= numeroDeViloes; j++){
				var posicaoInimigoX = random_range(25, 270)
				var posicaoInimigoY = random_range(25, 140)
				var randomSprite = random_range(0, 4)
				inimigo = instance_create_layer(posicaoInimigoX, posicaoInimigoY, "Instances", obj_ruim)
				inimigo.sprite_index = spritesBad[randomSprite]
				inimigo.spriteOK = sprites[randomSprite] 
				numeroIni++			
			}
			if (numeroIni == itensNum + fase){
				todosInimigosCriados = true
			}
		}
		}
		
	}
if (global.inimigosMortos == numeroDeViloes){
	global.faseAtual++;
    global.inimigosMortos = 0;
	show_debug_message("Inimigos resetados");
	todosInimigosCriados = false;
	numeroIni = 0
	audio_play_sound(snd_new_level, 1, false)
	with (obj_fade) {
		fading_out = true;
	}
}

if (global.faseAtual == 9){
	with (obj_transicao) {
		modo = "fade_out";
	}
	alarm[3] = room_speed * 3
	
}
}
