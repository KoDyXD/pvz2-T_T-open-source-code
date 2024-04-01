/// @description cambiar entre objetivos
if instance_exists(objetivo_cuales)
{
	switch(direccion)
	{
		case "derecha":
		if objetivo_cuales.cual < array_length(objetivo_cuales.frase)-1
		{
			objetivo_cuales.cual += 1;
			image_index = 1;
			alarm_set(0,15);
			audio_play_sound(sound_menu_boton_perfil_aceptar,10,0);
		}	
		break;
		case "izquierda":
		if objetivo_cuales.cual > 0
		{
			objetivo_cuales.cual -= 1;
			image_index = 1;
			alarm_set(0,15);
			audio_play_sound(sound_menu_boton_perfil_aceptar,10,0);
		}
		break;
	}
}