// delta_time retorna microssegundos, por isso dividimos por 1_000_000
countdown -= delta_time / 1000000;

// evitar valores negativos
if (countdown < 0) {
    countdown = 0;
    // ação quando acaba o tempo
    // show_message("Acabou o tempo!");
}
