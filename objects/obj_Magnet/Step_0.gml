var dir_x = 0;
var dir_y = 0;

if (keyboard_check(vk_right) or keyboard_check(ord("D"))) {
    dir_x = 1;
}
else if (keyboard_check(vk_left) or keyboard_check(ord("A"))) {
    dir_x = -1;
}
else if (keyboard_check(vk_down) or keyboard_check(ord("S"))) {
    dir_y = 1;
}
else if (keyboard_check(vk_up) or keyboard_check(ord("W"))) {
    dir_y = -1;
}

x += dir_x * move_speed;
y += dir_y * move_speed;

if (keyboard_check_pressed(vk_space)) {
    var alvo = instance_nearest(x, y, obj_Carry);
    if (alvo != noone) {
        if (point_distance(x, y, alvo.x, alvo.y) < 50) {
            alvo.follow_magnet = !alvo.follow_magnet; // alterna pegar/soltar
        }
    }
}
