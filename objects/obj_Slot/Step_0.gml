if (!filled) {
    var alvo = instance_place(x, y, obj_Carry);
    
    if (alvo != noone && !alvo.follow_magnet) { 
        
        if (alvo.item_type == expected_type) {
            alvo.placed = true;
            alvo.x = x;
            alvo.y = y;
            filled = true;
			global.score_vending += 1;
        }
    }
}
