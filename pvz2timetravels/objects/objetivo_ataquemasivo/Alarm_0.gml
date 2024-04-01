/// @description crear frase
var i = 3;
var frase = "a";

var fondo_id = layer_get_id("Background");
var back_id = layer_background_get_id(fondo_id);
switch(layer_background_get_sprite(back_id))
{
	case spr_patio_tutorial:
		frase = "Sobrevive a un ataque masivo en tu patio frontal.";
	break;
	case spr_patio_egipto:
		frase = "Sobrevive a un ataque masivo en el Antiguo Egipto."
	break;
}

objetivo_cuales.frase[pos] = [frase,i,i];

instance_destroy();