/// @description evitar numeros negativos o muy altos
if global.soles <= 0 {global.soles = 0};
if global.soles >= 9900 {global.soles = 9900};

if text_sol < global.soles
{
	text_sol += 1;
}

if text_sol > global.soles
{
	text_sol -= 1;
}

if text_sol != global.soles and alarm[0] = -1
{
	alarm_set(0,85);
}
if array_length(global.ra_id) <= 1 {global.recolectar = false;}