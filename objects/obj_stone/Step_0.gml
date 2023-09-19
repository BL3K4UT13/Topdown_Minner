if (place_meeting(x+1,y+1,obj_player) or place_meeting(x-1,y-1,obj_player) ) and global.key_action{
	vein_life -= 1
}

if vein_life <= 0{
	global.stone += 5
	instance_destroy()
}