if (alpha > 0) {
	
    draw_set_alpha(alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
	
    draw_set_font(ByteBounce);
    draw_set_color(c_white);

    var txt = "Limpe todas as celulas em 2 minutos para vencer! Tentar limpar celulas causa penalidade...\n\n\nPressione espaco para vencer " + string(global.faseAtual);
    var tw = string_width(txt);
    var th = string_height(txt);

    var cx = display_get_gui_width() / 2;
    var cy = display_get_gui_height() / 2;

    draw_text(cx - tw/2, cy - th/2, txt);



}