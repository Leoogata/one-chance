x += lengthdir_x(g_Speed, direction);
y += lengthdir_y(g_Speed, direction);

if (y < -sprite_height || y > room_height + sprite_height 
|| x < -sprite_width || x > room_width + sprite_width) {
    instance_destroy();
}