switch (modo) {
    case "fade_in":
        alpha -= velocidade;
        if (alpha <= 0) {
            alpha = 0;
            modo = "parado";
			alarm[0] = room_speed * 2
        }
    break;

    case "fade_out":
        alpha += velocidade;
        if (alpha >= 1) {
            alpha = 1;
            modo = "parado";
            // aqui você pode colocar room_goto(xxx) se quiser trocar de room
			alarm[0] = room_speed * 2
        }
    break;
}