/// @description Insert description here
image_speed = 0;
click = false;
editor_oleadas = string(global.editor_nivel_base[2]);
editor_banderas = string(global.editor_nivel_base[3]);

xx = -1;
yy = -1;

depth = 0;

_fuego[0] = 0;	//esta array guarda cuales son las oleadas masivas

_ajustar = false;	//activa el ajuste de _a
_a = 0;	//solo ajusta un detalle el la array _fuego
identificar = false;	//permite modificar el objeto de la oleada para que se identifique como masiva