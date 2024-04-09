/// @description Inserte aquí la descripción
funcionar = true;
velocidad = 0;
columpio = 0;
sel = true;
intensidad = 0;
intensidad1 = false;
frase = " al Antiguo Egipto";
frase_pers = false;
alarm_set(2,90);
var fondo_id = layer_get_id("Background");
var back_id = layer_background_get_id(fondo_id);
switch(layer_background_get_sprite(back_id))
{
	case spr_patio_tutorial:
		frase = " a su patio frontal";
	break;
	case spr_patio_egipto:
		frase = " al Antiguo Egipto";
	break;
	case spr_patio_pirata:
		frase = " a los Mares Piratas";
	break;
	case spr_patio_vaquero:
		frase = " al Salvaje Oeste";
	break;
	case spr_patio_cuevas:
		frase = " a las Cuevas Congeladas";
	break;
	case spr_patio_medieval:
		frase = " a la Edad Oscura";
	break;
	case spr_patio_selva:
		frase = " a la Ciudad Perdida";
	break;
	case spr_patio_jurasico:
		frase = " al Pantano del Jurasico";
	break;
	case spr_patio_playa:
		frase = " a la Playa de la Gran Ola";
	break;
	case spr_patio_futuro:
		frase = " al Futuro Lejano";
	break;
	case spr_patio_neon:
		frase = " al Vueltacasete de Neon";
	break;
	case spr_patio_roma:
		frase = " a la Antigua Roma";
	break;
}