if(keyboard_check_pressed(vk_space)){
	if (count_space = 0){	
		alarm[0] = room_speed * tempo
		liberarAlpha = true
		count_space++;
	}
}
if (liberarAlpha == true){
	alpha -= 0.02
}

contador++;

var letras = floor(contador / velocidadeTexto);

if (letras <= string_length(textoCompleto)) {
    textoMostrado = string_copy(textoCompleto, 1, letras);
} 
