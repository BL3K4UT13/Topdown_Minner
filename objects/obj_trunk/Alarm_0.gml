if !instance_place(x,y,obj_leaf){
	instance_create_layer(x,y - 8,"leaf",obj_leaf)
}

respawn = irandom_range(50,150)
alarm[0] = 20 * respawn
