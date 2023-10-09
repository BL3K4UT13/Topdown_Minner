if state == shop_state_open{
	
	var gui_w = display_get_width()
	var gui_h = display_get_height()
	
	draw_set_alpha(0.5)
	draw_set_color(c_black)
	draw_rectangle(0,0,gui_w,gui_h,false)
	draw_set_alpha(1)
	draw_set_color(-1)
	/*draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_halign(-1)
	draw_set_valign(-1)*/
	
	var xx = display_get_gui_width() /2
	var yy = display_get_gui_height() / 2
	
	draw_sprite(spr_ui_main,-1,xx,yy)
}