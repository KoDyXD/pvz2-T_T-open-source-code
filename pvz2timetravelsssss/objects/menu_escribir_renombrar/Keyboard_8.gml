/// @description escribir
if alarm[0] = -1 and string_length(combinacion) > 0
{
	combinacion = string_delete(combinacion,string_length(combinacion),1);
	alarm_set(0,5);
}