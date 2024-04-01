/// @description Insert description here
if instance_exists(padre)
{
	if string_length(padre.nivel_info[0]) < 15 and string_length(padre.nivel_info[0]) > 0
	{
		padre.nivel_info[0] += " ";
	}
}