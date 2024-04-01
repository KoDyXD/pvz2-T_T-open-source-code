/// @description Insert description here
if !instance_exists(editor_menu_oleadas_grupos_debug) and agrandar == true and menu == false
{
	alarm_set(0,2);
	menu = true;
	audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
	
	hijo_debug = instance_create_depth(0,0,depth,editor_menu_oleadas_grupos_debug);
	hijo_debug.padre = id;
}