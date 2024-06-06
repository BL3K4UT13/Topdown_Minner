var gui_w = display_get_width()
var gui_h = display_get_height()

var xx = display_get_gui_width() /2
var yy = display_get_gui_height() / 2

if global.pause == true{
	draw_set_alpha(0.5)
	draw_set_color(c_black)
	draw_rectangle(0,0,gui_w,gui_h,false)
	draw_set_alpha(1)
	draw_set_color(-1)
	draw_set_font(ft_pause)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_text(xx,yy,"JOGO PAUSADO!")
	draw_set_halign(-1)
	draw_set_valign(-1)
	draw_set_font(-1)
	
	draw_sprite(spr_button_config,1,x+52,y+720)
}

if global.pause == false {
	draw_sprite(spr_button_pause,1,x+48,y+48)
	draw_text(x,y,"Stone: " + string(global.stone))
	draw_text(x,y+16,"Coal: " + string(global.coal))
	draw_text(x,y+32,"Gold: " + string(global.gold))
	draw_text(x,y+48,"Wood: " + string(global.wood))
	
	draw_sprite(spr_ui_hotbar,-1,xx,720)
}