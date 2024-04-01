/// @description Insert description here
if instance_exists(padre)
{
	if string_length(padre.nivel_info[0]) > 0
	{
		padre.nivel_info[0] = string_delete(padre.nivel_info[0],string_length(padre.nivel_info[0]),1);
	}
}