draw_self()

var xMouse = mouse_x;
var yMouse = mouse_y;

if collision_point(xMouse, yMouse,id,false,false) {
		draw_sprite(spr_outline,0,x,y)
		draw_text(x+32,y,string(vein_life))
}