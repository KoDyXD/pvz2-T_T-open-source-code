/// @description Insert description here
if instance_exists(padre)
{
	if string_length(padre.nivel_info[0]) < 15
	{
		if mayus = false {padre.nivel_info[0] += "d";}else{padre.nivel_info[0] += "D";}
	}
}