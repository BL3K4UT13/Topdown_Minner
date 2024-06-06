function resource(){
	var xMouse = mouse_x;
	var yMouse = mouse_y;
	
	var sound = random_range(1,5)
	
	/*if sound == 1{
		audio_play_sound(SoundEffect_Mining1,1,0)
	*/
	
	if collision_point(xMouse, yMouse,id,false,false) 
	and place_meeting(x,y,obj_player_colission) 
	and global.state_free = true
	and mouse_check_button_pressed(mb_left) {
			vein_life -= 1
	}
}