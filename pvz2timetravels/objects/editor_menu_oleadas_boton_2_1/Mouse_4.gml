/// @description Insert description here
if click = false and !instance_exists(editor_menu_oleadas_boton_grupos_cerrar) and !instance_exists(editor_menu_oleadas_boton_3_1)
{
	audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
	click = true;
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
		
	var i = instance_create_layer(_x+110,_y-70,"hud",editor_menu_oleadas_boton_3_1);	//modificar oleadas
	var ii = instance_create_layer(_x+110,_y+70,"hud",editor_menu_oleadas_boton_3_1);	//modificar banderas
	
	i.cual = "oleadas";
	i.cantidad = string(global.editor_nivel_base[2]);
	i.otro = ii;
	
	ii.cual = "banderas";
	ii.cantidad = string(global.editor_nivel_base[3]);
	ii.otro = i;
		
	var iii = instance_create_layer(_x-110,_y+220,"hud",editor_menu_oleadas_boton_3_2);	//boton para aceptar y aplicar cambios
	iii.padre_oleadas = i;	//guardar id del objeto que modifica las oleadas
	iii.padre_banderas = ii;	//guardar id del objeto que modifica las banderas
	instance_create_layer(_x+110,_y+220,"hud",editor_menu_oleadas_boton_3_3);	//boton para cancelar cambios
}