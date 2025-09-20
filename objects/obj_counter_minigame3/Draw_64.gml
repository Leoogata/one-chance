draw_set_font(fnt_score);
draw_set_color(c_black); 
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

draw_text(32, 1048, "Score: " + string(score)); 
draw_text(1750, 1048, "Tempo: " + string(floor(countdown)));
	