/// @description Insert description here
if instance_exists(padre)
{
	if padre.padre.grupo_datos[padre.array_valor] != cual
	{
		audio_play_sound(sound_semillero_select,5,0);
		padre.padre.grupo_datos[padre.array_valor] = cual;
	}
}