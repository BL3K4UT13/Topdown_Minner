var gui_w = display_get_width()
var gui_h = display_get_height()

if global.pause{
	draw_set_alpha(0.5)
	draw_set_color(c_black)
	draw_rectangle(0,0,gui_w,gui_h,false)
	draw_set_alpha(1)
	draw_set_color(-1)
	draw_set_font(ft_pause)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_text(gui_w,gui_h,"JOGO PAUSADO!")
	draw_set_halign(-1)
	draw_set_valign(-1)
}else {
	draw_text(x,y,"Stone: " + string(global.stone))
	draw_text(x,y+16,"Coal: " + string(global.coal))
	draw_text(x,y+32,"Gold: " + string(global.gold))
	draw_text(x,y+48,"Wood: " + string(global.wood))
}