depth = -y

if (place_meeting(x+1,y+1,obj_player) or place_meeting(x-1,y-1,obj_player) ) and global.key_action and can_break{
	tree_life -= 1
}

if tree_life > 0{
	sprite_index = spr_tree
}
if tree_life <= 0 and can_break{
	global.wood += 3
	sprite_index = spr_trunk
	can_break = false
	alarm[0] = room_speed * 5
}