// fundo preto
draw_set_alpha(alpha)
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// desenha a imagem no centro
if (mostrar_imagem) {
   draw_set_alpha(imagem_alpha);

	var cx = display_get_gui_width() / 2;
	var cy = display_get_gui_height() / 2;

	var spr = spr_check;
	var escala = 0.3;

	// pega dimensões do sprite já escalado
	var sw = sprite_get_width(spr) * escala;
	var sh = sprite_get_height(spr) * escala;

	// desenha centralizado pelo meio, independente da origem
	draw_sprite_ext(spr, 0, cx - sw/2, cy - sh/2, escala, escala, 0, c_white, 1);

	draw_set_alpha(1);
}