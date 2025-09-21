// Fade in (aparecendo o jogo)
if (fading_in) {
    alpha -= velocidade;
    if (alpha <= 0) {
        alpha = 0;
        fading_in = false;
        mostrar_imagem = false;
        imagem_alpha = 0;
    }
}

// Fade out (escurecendo para trocar fase)
if (fading_out) {
    alpha += velocidade;

    // quando a tela está bem escura, mostra a imagem
    if (alpha >= 0.5 && !mostrar_imagem) {
        mostrar_imagem = true;
    }

    // faz a imagem aparecer e desaparecer suavemente
    if (mostrar_imagem) {
        if (alpha < 1) {
            imagem_alpha = lerp(imagem_alpha, 1, 0.1);
        } else {
            imagem_alpha = lerp(imagem_alpha, 0, 0.1);
        }
    }

    if (alpha >= 1) {
        alpha = 1;
        fading_out = false;

        // troca de fase aqui
  

        // começa fade in de volta
        fading_in = true;
    }
}