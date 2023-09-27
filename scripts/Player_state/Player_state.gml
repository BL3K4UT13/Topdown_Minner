
function player_state_free(){
	key_up = keyboard_check(ord("W"))
	key_down = keyboard_check(ord("S"))
	key_left = keyboard_check(ord("A"))
	key_right = keyboard_check(ord("D"))
	global.key_debug = keyboard_check(vk_f1)

	if can_move{
		xaxis = key_right - key_left
		yaxis = key_down - key_up
	}
	var dir = point_direction(0,0,xaxis,yaxis)
	
	if (xaxis == 0) and (yaxis == 0){
	len = 0;	
	} else {
		len = spd;
	}

	hspd = lengthdir_x(len,dir)
	vspd = lengthdir_y(len,dir)
	
	var dir = point_direction(0,0,xaxis,yaxis)

	if (xaxis == 0) and (yaxis == 0){
		len = 0;	
	} else {
		len = spd;
	}

	hspd = lengthdir_x(len,dir)
	vspd = lengthdir_y(len,dir)
	
	#region Colisão 
	
	//Invi wall
	if place_meeting(x+hspd,y,obj_invi_wall){
		while !place_meeting(x+sign(hspd),y,obj_invi_wall){
			x +=sign(hspd)
		}
		hspd=0
	}
	
	x += hspd
		
		//Invi wall
	if place_meeting(x,y+vspd,obj_invi_wall){
		while !place_meeting(x,y+sign(vspd),obj_invi_wall){
			y +=sign(vspd)
		}
		vspd=0
	}
	
	y +=vspd
		
	#endregion
	
	image_speed = sign(len)
	
	if len == 0{image_index = 0}
	
	if vspd > 0 {
		sprite_index = spr_player_down
	} else if vspd < 0 {
		sprite_index = spr_player_up
	}

	if hspd > 0 {
		sprite_index = spr_player_right
	} else if hspd < 0 {
		sprite_index = spr_player_left
	}

	if key_down{
		sprite_index = spr_player_down
		last_dir = 1
	} else if key_up {
		sprite_index = spr_player_up
		last_dir = 2
	}

	if key_right {
		sprite_index = spr_player_right
		last_dir = 3
	} else if key_left {
		sprite_index = spr_player_left
		last_dir = 4
	}
	
	if mouse_check_button_pressed(mb_left){
		image_index = 0
		state = player_state_mining
	}
	
}
	
#region Sprite
	
function player_state_mining(){

	xaxis = 0 
	yaxis = 0
	image_speed = 1
	
    if last_dir == 1 {
		sprite_index = spr_mining_down
	} else if last_dir == 2{
		sprite_index = spr_mining_up
	}else if last_dir == 3{
		sprite_index = spr_mining_right
	}else if last_dir == 4{
		sprite_index = spr_mining_left
	}
	
	if image_index >= image_number -1{
		state = player_state_free
	}	

}

#endregion