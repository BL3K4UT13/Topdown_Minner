function resource(){
	var xMouse = mouse_x;
	var yMouse = mouse_y;
	
	var _sound = random_range(1,4)
	
	if _sound == 1{
		_sound = snd_effect_mining1
	} else if _sound == 2{
		_sound = snd_effect_mining2
	} else if _sound == 3{
		_sound = snd_effect_mining3
	} else if _sound == 4{
		_sound = snd_effect_mining4
	} 
	
	
	if collision_point(xMouse, yMouse,id,false,false) 
	and place_meeting(x,y,obj_player_colission) 
	and global.state_free = true
	and mouse_check_button_pressed(mb_left) {
		audio_play_sound(_sound,1,0)
		vein_life -= 1
	}
}