/// @description explosion con papapum
var i = instance_place(x,y,expl_petacereza);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
		//iluminar zombi
		brillo = 0.13;
	anim_nada = true;
	alarm_set(3,2);
	hp -= i.dano;
	ds_list_add(projs,i);

}