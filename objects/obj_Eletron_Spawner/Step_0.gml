timer++;

if (timer >= spawn_time) {
    timer = 0;
    
    var y_Limits_Eletron = irandom_range(room_height/3, room_height*2/3);
    instance_create_layer(0, y_Limits_Eletron, "Instances", obj_Eletron); 
	
	spawn_time = irandom_range(40, 80);
}
