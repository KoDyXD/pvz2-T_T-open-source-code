/// @description
if global.click == false
{
if hijo == noone
{
	if !collision_rectangle(mouse_x-2,mouse_y-2,mouse_x+2,mouse_y+2,editor_menu_oleadas_boton_1,0,1) and !collision_rectangle(mouse_x-2,mouse_y-2,mouse_x+2,mouse_y+2,editor_patio_eliminar,0,1)
	{
		audio_play_sound(sound_menu_boton,5,0);
		instance_destroy(editor_patio_eliminar);
		if x div 166 < 14
		{
			hijo = instance_create_layer(((x div 166)*166)+83+166,((y div 186)*186)+93,"hud",editor_patio_eliminar);
		}
		else
		{
			hijo = instance_create_layer(((x div 166)*166)+83-166,((y div 186)*186)+93,"hud",editor_patio_eliminar);
		}
		hijo.padre = id;
	}
}
else
{
	instance_destroy(hijo);
	hijo = noone;
}
}