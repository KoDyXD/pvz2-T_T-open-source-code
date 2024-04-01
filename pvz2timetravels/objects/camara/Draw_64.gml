/// @description frase del inicio del nivel
var _x = display_get_gui_width()/2;
var _y = display_get_gui_height()-75;

draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(intensidad);
if frase_pers = false
{
	var _frase = global.nombre;	//recoger nombre del usuario
	_frase = string_replace(_frase,".ini","");	//recoger nombre del usuario sin .ini
	draw_text_outline_transformed(_x,_y,"El viaje de "+string(_frase)+string(frase),1,1,c_white,c_black,1.5,1.5,0);
}
else
{
	draw_text_outline_transformed(_x,_y,frase,1,1,c_white,c_black,1.5,1.5,0);
}
draw_set_alpha(1);