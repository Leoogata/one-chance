if (follow_magnet && !placed) {
    var magnet = instance_nearest(x, y, obj_Magnet);
    if (magnet != noone) {
        x = magnet.x;
        y = magnet.y;
    }
}
