/// @description Insert description here
//Pasarelas
instance_destroy(editor_menu_pasarelas_boton_1);
instance_destroy(editor_menu_cesped_boton_1);
var _i = layer_get_id("Background");
var _ii = layer_background_get_id(_i);
switch(layer_background_get_sprite(_ii))
{
	case spr_patio_pirata:
		instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])+camera_get_view_y(view_camera[0])-75,"hud",editor_menu_pasarelas_boton_1);
	break;
	case spr_patio_tutorial:
		instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])+camera_get_view_y(view_camera[0])-75,"hud",editor_menu_cesped_boton_1);
	break;
}