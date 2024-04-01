// @description choque con guisantes
var i = instance_place(x,y,proj_bocadedragon);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
		//iluminar zombi
		brillo = 0.13;
	if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
	anim_nada = true;
	anim_expl = true;
	if apagado = true
	{
		apagado = false;
		if hp <= 150 {skeleton_skin_set("fuego/dano")}else{skeleton_skin_set("fuego/entero");}
	}
	alarm_set(3,2);
	if alarm[7] != -1 {alarm_set(7,1);}	//quitar relantizacion
	ds_list_add(projs,i);
}