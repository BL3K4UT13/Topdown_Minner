
if keyboard_check_pressed(vk_escape){
	global.pause = !global.pause
}
if keyboard_check_pressed(ord("R")) {
	room_restart()
}

show_debug_message(global.state_free)