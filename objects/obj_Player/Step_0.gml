 // Reset velocidade
var dir_x = 0;
var dir_y = 0;

// Checa input horizontal
if (keyboard_check(vk_right) or keyboard_check(ord("D"))) {
    dir_x = 1;
}
if (keyboard_check(vk_left) or keyboard_check(ord("A"))) {
    dir_x = -1;
}

// Checa input vertical
if (keyboard_check(vk_down) or keyboard_check(ord("S"))) {
    dir_y = 1;
}
if (keyboard_check(vk_up) or keyboard_check(ord("W"))) {
    dir_y = -1;
}

// Normaliza movimento para evitar diagonal mais rápida
if (dir_x != 0 or dir_y != 0) {
    var len = point_distance(0, 0, dir_x, dir_y);
    dir_x /= len;
    dir_y /= len;
}

// Aplica movimento
x += dir_x * move_speed;
y += dir_y * move_speed;

// Animações
if (dir_x != 0 or dir_y != 0) {
    if (dir_x > 0) { sprite_index = spr_Walk_Right; last_dir = "right"; }
    else if (dir_x < 0) { sprite_index = spr_Walk_Left; last_dir = "left"; }
    else if (dir_y > 0) { sprite_index = spr_Walk_Down; last_dir = "down"; }
    else if (dir_y < 0) { sprite_index = spr_Walk_Up; last_dir = "up"; }
}
else {
    if (last_dir == "right") sprite_index = spr_Idle_Right;
    else if (last_dir == "left") sprite_index = spr_Idle_Left;
    else if (last_dir == "up") sprite_index = spr_Idle_Up;
    else if (last_dir == "down") sprite_index = spr_Idle_Down;
}
