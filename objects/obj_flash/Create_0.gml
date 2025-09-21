alpha_flash = 0;     // começa invisível
fade_in_speed  = 0.005; // velocidade pra aparecer
fade_out_speed = 0.01; // velocidade pra sumir
estado = 0;          // 0 = aparecendo, 1 = sumindo

alarm[0] = room_speed * 3
som = audio_play_sound(snd_explosion, 1, false);
audio_sound_gain(som, 3, 0);
global.velocidade = 0