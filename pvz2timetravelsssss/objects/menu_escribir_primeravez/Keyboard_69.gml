/// @description escribir
if alarm[0] = -1 and string_length(combinacion) <= 15
{
	if mayus = false {combinacion += "e";}else{combinacion += "E";}
	alarm_set(0,tecla);
}