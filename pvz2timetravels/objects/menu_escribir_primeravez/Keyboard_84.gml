/// @description escribir
if alarm[0] = -1 and string_length(combinacion) <= 15
{
	if mayus = false {combinacion += "t";}else{combinacion += "T";}
	alarm_set(0,tecla);
}