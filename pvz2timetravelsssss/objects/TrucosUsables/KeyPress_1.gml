for (var i = 0; i < array_length(trucos); i++) {
    var _truco = trucos[i];
	var _codigo = _truco[0];
	var _trucofuncion = _truco[1];
	
	if string_last_pos(_codigo,combinacion)
	{
		if global.trucos == false
		{
			global.trucos = true;
		}
		_trucofuncion();
		combinacion = "";
		audio_play_sound(sound_trucos_activar,0,0);
	}
}