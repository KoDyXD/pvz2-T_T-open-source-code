/// @description fondo del patio
if agrandar == true
{
	audio_play_sound(sound_menu_boton_perfil_cambiar,5,0);
	texture_flush("patio_egipto");
	texture_flush("patio_frontal");
	texture_flush("patio_pirata");
	texture_flush("patio_pirata1");
	texture_flush("patio_pirata2");
	texture_flush("patio_pirata3");
	texture_flush("patio_pirata4");
	texture_flush("patio_pirata5");
	texture_flush("patio_pirata6");
	texture_flush("patio_pirata7");
	texture_flush("patio_pirata8");
	texture_flush("patio_pirata9");
	var _i = layer_get_id("Background");
	var _ii = layer_background_get_id(_i);
	layer_background_sprite(_ii,asset_get_index(editor_patio));
	global.editor_nivel_base[0] = editor_patio;
	
	if editor_patio != spr_patio_pirata
	{
		for (var i = array_length(global.editor_oleada_cual)-1; i > 0; --i) {
		    if global.editor_oleada_cual[i][0] = -1
			{
				if global.editor_oleada_cual[i][1] = "pasarelas"
				{
					array_delete(global.editor_oleada_cual,i,1);
				}
			}
		}
	}
	if editor_patio != spr_patio_tutorial
	{
		for (var i = array_length(global.editor_oleada_cual)-1; i > 0; --i) {
		    if global.editor_oleada_cual[i][0] = -1
			{
				if global.editor_oleada_cual[i][1] = "cesped"
				{
					array_delete(global.editor_oleada_cual,i,1);
				}
			}
		}
	}
	nivel_editor_0_0.alarm[1] = 1;
}