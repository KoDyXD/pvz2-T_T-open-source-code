/// @description escribir
if alarm[0] = -1 and string_length(combinacion) <= 15
{
	if mayus = false {combinacion += "l";}else{combinacion += "L";}
	alarm_set(0,tecla);
}