/// @description Inserte aquí la descripción
if objetivo_cuales.dibujar = true
{
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	sprite_index = spr_menu_boton;
	y = _y+285;
}
else
{
	sprite_index = spr_menu_boton_crear;
	y = ystart;
}