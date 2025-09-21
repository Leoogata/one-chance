if (global.jogoIniciou == true) {

var pontosMax = 40

if (final == false){
	// Configurações visuais

	var barra_x = 150;
	var barra_y = 100; 
	var barra_largura = 200; 
	var barra_altura = 30; 

	// Barra de fundo (preta com cantos arredondados)

	draw_set_color(c_black); 
	draw_roundrect(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, false); 

	// Preenchimento (verde, também arredondado) 

	var preenchimento = (pontos / pontosMax) * barra_largura; 
	draw_set_color(c_aqua); 
	draw_roundrect(barra_x, barra_y, barra_x + preenchimento, barra_y + barra_altura, false);

	// Borda branca (apenas linhas, mais grossa) 

	draw_set_color(c_white); draw_roundrect(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, true); draw_sprite_ext(spr_boost_good, 0, 90, 92, 0.05, 0.05, 0, c_white, 1); }
}