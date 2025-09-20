if (keyboard_check_pressed(vk_space)) {
    var tiro;

    tiro = instance_create_layer(x, y, "Instances", obj_Neutron);
    tiro.direction = 90; // pra cima (90°)

   // tiro = instance_create_layer(x, y, "Instances", obj_Neutron);
   // tiro.direction = 75; // levemente pra esquerda

   // tiro = instance_create_layer(x, y, "Instances", obj_Neutron);
   // tiro.direction = 105; // levemente pra direita
}