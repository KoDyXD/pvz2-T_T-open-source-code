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
}

///movimiento de menu de seleccion de plantas
global.mover_menu = true;
global.mover_destruir = false;
global.mover_movY = 0;