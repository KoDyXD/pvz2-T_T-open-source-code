/// @description explosion con papapum
var i = instance_place(x,y,expl_explotonuez);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
	if i.image_index < 12
	{
			//iluminar zombi
			brillo = 0.13;
		hp -= i.dano;
		ds_list_add(projs,i);
		alarm_set(3,2);
	}
}