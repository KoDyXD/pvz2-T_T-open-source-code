/// @description explosion con papapum
var expl = instance_place(x,y,expl_explotonuez);
if (expl != noone) and ds_list_find_index(projs,expl) = -1 and alarm[0] = -1
{
		//iluminar zombi
		brillo = 0.13;
	hp -= expl.dano;
	ds_list_add(projs,expl);
}