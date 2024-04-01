/// @description Insert description here
var _x = mouse_x div 166;
var _y = mouse_y div 186;

if _x >= 6 and _x <= 14 and _y >= 3 and _y <= 7 and global.click = false
{
	if !collision_rectangle(mouse_x-2,mouse_y-2,mouse_x+2,mouse_y+2,editor_menu_oleadas_boton_1,0,1) and !collision_rectangle(mouse_x-2,mouse_y-2,mouse_x+2,mouse_y+2,editor_boton_jugar,0,1) and !collision_rectangle(mouse_x-2,mouse_y-2,mouse_x+2,mouse_y+2,editor_patio_eliminar,0,1)
	{
		if !collision_rectangle(_x*166,_y*186,_x*166+166,_y*186+186,editor_patio_debug,0,1)
		{
			instance_destroy(editor_patio_eliminar);
			audio_play_sound(sound_menu_boton_perfil,5,0);
			var i = instance_create_layer(_x*166+166/2,_y*186+186/2,"hud",editor_patio_semilla);
			with(i)
			{
				var _x = (x div 166)-5;
				var _y = (y div 186)-2;

				var _planta = choose("planta_lanzaguisantes","planta_girasol","planta_papapum","planta_nuez","planta_coltapulta","planta_hielaguisantes","planta_birasol");

				//planta = [-1,"planta",_x,_y,"planta_lanzaguisantes"];
				planta = [-1,"planta",_x,_y,_planta];

				pos = array_length(global.editor_oleada_cual);	//posicion en la array
				global.editor_oleada_cual[pos] = planta;	//guardar planta creada en la array
				
				alarm_set(0,1);
			}
		}
	}
}