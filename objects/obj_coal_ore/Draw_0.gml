draw_self()
if (place_meeting(x+1,y+1,obj_player) or place_meeting(x-1,y-1,obj_player) ){
	draw_text(x+32,y,string(vein_life))
}

var xMouse = mouse_x;
var yMouse = mouse_y;

if collision_point(xMouse, yMouse,id,false,false) {
		draw_sprite(spr_outline,0,x,y)
}