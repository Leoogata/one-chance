var camX = obj_nave.x - offset_x;
var camY = obj_nave.y - offset_y;

if (shake_length > 0) {
    var shakeX = random_range(-shake_length, shake_length);
    var shakeY = random_range(-shake_length, shake_length);

    camera_set_view_pos(camera, camX + shakeX, camY + shakeY);

} else {
    camera_set_view_pos(camera, camX, camY);
}

