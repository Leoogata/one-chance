function scr_inicio_telas(_texto, _velocidade, _tempo){
	var instancia = instance_create_layer(0, 0, "Instances", obj_textoInicial)
	with (instancia){
		textoCompleto = _texto
		velocidadeTexto = _velocidade
		tempo = _tempo
	}
}