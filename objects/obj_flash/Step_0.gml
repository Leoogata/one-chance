
if (estado == 0) {
    alpha_flash += fade_in_speed;
    if (alpha_flash >= 1) {
        alpha_flash = 1;
        estado = 1; // muda para fase de sumir
		alarm[1] = room_speed * 2
	}
}