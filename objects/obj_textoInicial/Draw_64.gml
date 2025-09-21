display_set_gui_size(320, 180);

if (!global.virusGameIniciou) {
    // Fundo preto cobrindo a tela inteira
    draw_set_color(c_black);
	draw_set_alpha(alpha)
    draw_rectangle(0, 0, 320, 180, false);

    // Texto estilo terminal (centralizado)
	draw_set_alpha(alpha);
    draw_set_color(c_lime); // verde estilo terminal
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
	
    // draw_text_ext_transformed(x, y, string, separacao, largura_max, xscale, yscale, angle)
    draw_text_ext_transformed(10, 18, textoMostrado + "_", 30, 1000, 0.2, 0.2, 0);
	
	var cursor = "_";

}

