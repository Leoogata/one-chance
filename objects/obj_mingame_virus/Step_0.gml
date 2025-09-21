	
	for (var fase = 1; fase <= array_length(numeroItens) - 1; fase++){
		if (todosInimigosCriados == false){
			if (global.faseAtual == fase){
			itensNum = numeroItens[fase]
			viloesNum = itensNum - fase
			numeroDeViloes = fase * 2
			for (var i = 1; i <= itensNum - fase; i++){
				var posicaoInimigoX = random_range(25, 270)
				var posicaoInimigoY = random_range(25, 140)
				instancia = instance_create_layer(posicaoInimigoX, posicaoInimigoY, "Instances", obj_virus)
				numeroIni++
			}
			for (var j = 1; j <= numeroDeViloes; j++){
				var posicaoInimigoX = random_range(25, 270)
				var posicaoInimigoY = random_range(25, 140)
				inimigo = instance_create_layer(posicaoInimigoX, posicaoInimigoY, "Instances", obj_ruim)
				numeroIni++			
			}
			if (numeroIni == itensNum + fase){
				todosInimigosCriados = true
			}
		}
		}
		
	}
if (global.inimigosMortos == numeroDeViloes){
	global.faseAtual++
	global.inimigosMortos = 0;
	show_debug_message("Inimigos resetados");
	todosInimigosCriados = false;
	numeroIni = 0
}

if (global.faseAtual == 9){
	game_restart()
}

