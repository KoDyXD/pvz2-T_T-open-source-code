/// @description cambiar musica
if global.editor_nivel_base[1] != cual
{
	audio_play_sound(sound_menu_boton_perfil_cambiar,5,0);
	global.editor_nivel_base[1] = cual;
	if cual != "musica_neon"
	{
		for (var i = array_length(global.editor_oleada_cual)-1; i > 0; --i) {
		    if global.editor_oleada_cual[i][1] = "VCN"
			{
				array_delete(global.editor_oleada_cual,i,1);
			}
		}
	}
}