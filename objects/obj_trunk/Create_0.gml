tempo_decorrido = 0

respawn = irandom_range(25,100)

instance_create_layer(x,y - 8,"leaf",obj_leaf)

alarm[0] = 20 * respawn