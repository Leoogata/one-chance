
if (keyboard_check_pressed(vk_space)){
	if (countSpace == 0){
		global.jogoIniciou = true;
		global.audio = audio_play_sound(snd_hack_music, 1, true);
		global.velocidade = -1
	}
	countSpace++;
}


if(global.jogoIniciou == true){
	
var list = [obj_boost_good, obj_boost];
var colisao = noone;


if( keyboard_check(ord("W"))){
	y -= 3
} else if (keyboard_check(ord("S"))){
	y += 3
} else if (keyboard_check(ord("D"))){
	x += 2
} else if (keyboard_check(ord("A"))){
	x -= 1
}



for (var i = 0; i < array_length(list); i++) {
    colisao = instance_place(x, y, list[i]);
    if (colisao != noone) break;
}

if (colisao != noone) {
    if (colisao.object_index == obj_boost_good && colisao.x < 0) {
		pontos = pontos - 1
    }
}

// só aplica se encontrou algo
if (colisao != noone) {
	alarm[3] = room_speed * 1
	prevValue = global.velocidade
	if (colisao.name == 0){
		global.velocidade = -0.5
		pontos = pontos - 1
		vidas = vidas - 1
		audio_play_sound(snd_error, 1, false);
		
	} else {
		global.velocidade = -2 
		pontos = pontos + 1
		audio_play_sound(snd_speed, 1, false);
		screen_shake(5, 5)
	}
    
	if (vidas == 0){
		scr_explosao()
	} 
	
	if (pontos == necessarioParaGanhar && !alarmAtivado){
		alarm[2] = room_speed * 1
		alarmAtivado = true
		acabou = true
	}
	
	instance_destroy(colisao);
}

var fundo = layer_get_id("Background");
if (fundo != -1) {
    layer_x(fundo, layer_get_x(fundo) + global.velocidade);
}
}

contador++;

var letras = floor(contador / velocidadeTexto);

if (letras <= string_length(textoCompleto)) {
    textoMostrado = string_copy(textoCompleto, 1, letras);
} 

tempo = alarm[0]

if (acabou == true){
	audio_stop_sound(global.audio);
}

