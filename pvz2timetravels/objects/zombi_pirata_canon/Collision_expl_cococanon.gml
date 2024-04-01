/// @description explosion con papapum
var i = instance_place(x,y,expl_cococanon);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
	if i.image_index < 15
	{
			//iluminar zombi
			brillo = 0.13;
		producir = false;
		morir = true;
		anim_nada = true;
		alarm_set(3,2);
		hp = 0;
		ds_list_add(projs,i);
	}
}