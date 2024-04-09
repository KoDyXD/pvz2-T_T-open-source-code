/// @description ajustar weas de la room
var _x = room_height/display_get_height();
_x = display_get_width()*_x;

room_width = _x;
camera_set_view_size(view_camera[0],room_width,room_height);

//crear botones
var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]);
var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]);


if os_type = os_windows
{
	instance_create_layer(_x-100,_y-100,"Instances",menu_boton_noticias);
	instance_create_layer(_x-100,_y-250,"Instances",menu_boton_graficos_pantalla_completa);
	instance_create_layer(_x-100,_y-400,"Instances",menu_boton_creditos);
}
else
{
	instance_create_layer(_x-100,_y-100,"Instances",menu_boton_noticias);
	instance_create_layer(_x-100,_y-250,"Instances",menu_boton_creditos);
}
instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,_y-250,"instances",menu_boton_perfil);
if os_type = os_windows
{
	var i = instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2)-150,_y-100,"instances",menu_boton_iniciar_salir);
	i.texto = "salir";
	i.sprite_index = spr_menu_boton_3;
	var i = instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2)+150,_y-100,"instances",menu_boton_iniciar_salir);
	i.texto = "jugar";
}
else
{
	var i = instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2),_y-100,"instances",menu_boton_iniciar_salir);
	i.texto = "jugar";
}