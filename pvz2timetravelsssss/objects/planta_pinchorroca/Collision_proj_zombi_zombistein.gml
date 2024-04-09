/// @description recibir daño
var i = instance_place(x,y,proj_zombi_zombistein);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
	//iluminar zombi
	brillo = 0.13;
	hp -= 1000;
	ds_list_add(projs,i);
	with(i) {instance_destroy();}
}