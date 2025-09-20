x += lengthdir_x(g_Speed, direction);
y += lengthdir_y(g_Speed, direction);

if (y < -sprite_height || y > room_height + sprite_height 
|| x < -sprite_width || x > room_width + sprite_width) {
    instance_destroy();
}

if (!fade_out && tilemap_get_at_pixel(tilemap, x, y) != 0) {
    fade_out = true;
	g_Speed = 0;
}

if (fade_out) {
    image_alpha -= fade_speed;
    
    if (image_alpha <= 0) {
        instance_destroy();
    }
}

