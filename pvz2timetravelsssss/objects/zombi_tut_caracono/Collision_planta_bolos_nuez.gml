// @description choque con guisantes
var i = instance_place(x,y,planta_bolos_nuez);
if (i != noone) and ds_list_find_index(projs,i) = -1 and i.alarm[1] = -1
{
		//iluminar zombi
		brillo = 0.13;
		if escudo > 0 {audio_play_sound( choose( sound_impacto_cono_1, sound_impacto_cono_2), 1, 0);}else{audio_play_sound(choose(sound_impacto_1,sound_impacto_2, sound_impacto_3),1,0);}
	i.aa = true;
	if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
	ds_list_add(projs,i);
}