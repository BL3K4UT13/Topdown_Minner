if tempo_decorrido >= 0 {

	if !place_meeting(x,y,obj_coal_ore) && !place_meeting(x,y,obj_gold_ore) && 
	!place_meeting(x,y,obj_stone) && !place_meeting(x,y,obj_player){  
		
		num = irandom_range(1,20)
		
        if num >= 1 && num <= 4 {
            instance_create_layer(x, y, "map", obj_stone);
        } 
        else if num >= 5 && num <= 6 {
            instance_create_layer(x, y, "map", obj_coal_ore);
        } 
        else if num == 7 {
            instance_create_layer(x, y, "map", obj_gold_ore);
        }
    }
    
    // Reiniciar o tempo decorrido e redefinir o alarme
    tempo_decorrido = 0;
	
	respawn_time = irandom_range(10,70)

	alarm[0] = room_speed * respawn_time
}