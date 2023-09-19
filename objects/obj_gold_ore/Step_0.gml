var xMouse = mouse_x;
var yMouse = mouse_y;

if collision_point(xMouse, yMouse,id,false,false) 
and place_meeting(x,y,obj_player_colission) 
and mouse_check_button_pressed(mb_left) {
		vein_life -= 1
}

if vein_life <= 0{
	global.gold += gold
	global.stone += stone
	instance_destroy()
}