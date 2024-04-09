/// @description mover creditos
if fondo_color > 126
{
	fondo_valor = -0.05;
}
if fondo_color < 60
{
	fondo_valor = 0.05;
}
fondo_color += fondo_valor;
//126 min azul
//60 max azul

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id,make_color_rgb(0,fondo_color,142));