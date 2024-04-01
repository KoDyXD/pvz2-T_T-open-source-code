// @description choque con guisantes
var i = instance_place(x,y,planta_bolos_giganuez);
if (i != noone) and ds_list_find_index(projs,i) = -1 and i.alarm[1] = -1
{
		//iluminar zombi
		brillo = 0.13;
		audio_play_sound(sound_bolos_choque,5,0);
	if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
	ds_list_add(projs,i);
}