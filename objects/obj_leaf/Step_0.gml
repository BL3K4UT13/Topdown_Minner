if place_meeting(x,y,obj_player_colission){
	if mouse_check_button_pressed(mb_left){
		tree_life -= 1
	}
}

if tree_life <= 0{instance_destroy()}