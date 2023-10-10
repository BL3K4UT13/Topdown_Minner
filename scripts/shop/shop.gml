function shop_state_free(){
	if place_meeting(x,y,obj_player_colission) 
	and keyboard_check_pressed(ord("E"))
	and global.pause == false{
		global.pause = true
		state = shop_state_open
	}
}

function shop_state_open(){
	var hroom = room_height / 2
	var wroom = room_width / 2
	
	draw_sprite(spr_ui_main,1,hroom,wroom)
	
	
	if keyboard_check_pressed(vk_escape){
		state = shop_state_free
	}
}