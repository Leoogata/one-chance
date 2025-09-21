draw_set_font(fnt_score);
draw_set_color(c_black); 
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

draw_text(room_width/12, room_height* 9/10, "Tempo: " + string(floor(countdown)));
	