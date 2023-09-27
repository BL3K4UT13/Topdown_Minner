var xMouse = mouse_x;
var yMouse = mouse_y;

if collision_point(xMouse, yMouse,id,false,false) 
and place_meeting(x,y,obj_player_colission) 
and mouse_check_button_pressed(mb_left) {
		vein_life -= 1
}

if vein_life <= 0{
	sprite_index = spr_rock_frags
	var part = part_system_create(ps_rock_destroy)
	part_system_position(part,x+16,y+16)
	
	if image_index >= image_number - 1{
		if part_system_exists(part){
			part_system_destroy(part)		
		}
		global.coal += coal
		global.stone += stone
		instance_destroy()
	}
}

