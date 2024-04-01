/// @description debug y nombre del nivel
var _x = display_get_gui_width();
var _y = display_get_gui_height();

//nombre del nivel
if !instance_exists(camara)
{
	draw_set_font(fnt_menu);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text_outline(_x-605,_y-50,nombrexd,2,4,$79DFF7,c_black);

	//barra de progreso
	draw_sprite_stretched(spr_progreso_1,0,_x-556,_y-64,aumentar,28);
	draw_sprite(spr_progreso_2,0,_x-575,_y-50);

	//banderas
	for (var i = 0; i < array_length(banderas); ++i)
	{
		draw_sprite(spr_progreso_icon_2_1,0,_x-556+(limite/oleada_bandera)*banderas[i],_y-64);
	}

	//cabeza zombi
	draw_sprite(spr_progreso_icon_1,0,_x-575+aumentar,_y-50);
}