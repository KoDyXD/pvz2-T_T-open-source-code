/// @description Inserte aquí la descripción
if destruir = true and intensidad > 0
{
	intensidad -= 0.03;
}

if intensidad1 < 1 and alarm[0] > 50  and alarm[1] = -1 {intensidad1 += 0.01}

if alarm[0] <= 50 and intensidad1 > 0 {intensidad1 -= 0.03;}
if destruir = true and intensidad <= 0
{
	instance_destroy();
	if global.primeravez2 = false
	{
		instance_create_depth(0,0,0,menu_escribir_primeravez);
	}
}	