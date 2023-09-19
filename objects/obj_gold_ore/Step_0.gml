if (place_meeting(x+1,y+1,obj_player) or place_meeting(x-1,y-1,obj_player) ) and global.key_action{
	vein_life -= 1
}

if vein_life <= 0{
	global.gold += 1
	global.stone += 1
	instance_destroy()
}