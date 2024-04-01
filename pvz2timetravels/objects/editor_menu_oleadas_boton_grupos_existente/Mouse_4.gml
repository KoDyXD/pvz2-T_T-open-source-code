/// @description Insert description here
if !instance_exists(editor_menu_oleadas_grupos_debug) and agrandar == true
{
	audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
	switch(grupo_datos[1])
	{
		case "zombi":
		var _inst = instance_create_depth(x,y,depth,editor_menu_oleadas_grupos_modificar_zombis);
		break;
		case "tumba":
		var _inst = instance_create_depth(x,y,depth,editor_menu_oleadas_grupos_modificar_tumba);
		break;
		case "tumbas":
		var _inst = instance_create_depth(x,y,depth,editor_menu_oleadas_grupos_modificar_tumbas);
		break;
		case "planta":
		var _inst = instance_create_depth(x,y,depth,editor_menu_oleadas_grupos_modificar_planta);
		break;
		case "VCN":
		var _inst = instance_create_depth(x,y,depth,editor_menu_oleadas_grupos_modificar_musicaVCN);
		break;
	}
	_inst.padre = id;
}