/// @description explosion con bala de canon
var i = instance_place(x,y,expl_balacanon);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
	if i.image_index < 15
	{
			//iluminar zombi
			brillo = 0.13;
		alarm_set(3,2);
		hp -= i.dano;
		ds_list_add(projs,i);
	}
}