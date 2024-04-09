/// @description Inserte aquí la descripción
cuenta += 1;
if cuenta <= 3
{
	audio_play_sound( choose( sound_comiendo_1, sound_comiendo_2, sound_comiendo_3), 2, 0);
	alarm_set(0,60);
}
if cuenta = 4
{
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-130;
	
	if casillas_perder.editor = false
	{
		var _bot = instance_create_depth(x-200,_y,-25,menu_recom_regresar);
		_bot.sprite_index = spr_menu_boton_big_3;
		if global.nivel_tutorial[5] = false {_bot.to = menu_principal;}
		var _bot = instance_create_depth(x+200,_y,-25,menu_reiniciar);
		_bot.sprite_index = spr_menu_boton_big_2;
	}
	else
	{
		var _bot = instance_create_depth(x-300,_y,-25,menu_recom_regresar);
		_bot.sprite_index = spr_menu_boton_big_3;
		if global.nivel_tutorial[5] = false {_bot.to = menu_principal;}
		
		var _bot = instance_create_depth(x+300,_y,-25,menu_reiniciar);
		_bot.sprite_index = spr_menu_boton_big;
		_bot.image_xscale = 1;
		_bot.image_yscale = 1;
		
		var _bot = instance_create_depth(x,_y,-25,menu_editor);
		_bot.sprite_index = spr_menu_boton_big_2;
	}
}