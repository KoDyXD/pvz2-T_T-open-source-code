// @description choque con guisantes
var i = instance_place(x,y,proj_boomerang);
if (i != noone) and ds_list_find_index(projs,i) = -1
{
		//iluminar zombi
		if image_blend = c_white or image_blend = c_silver {image_blend = c_silver; alarm_set(5,10);}
		audio_play_sound(choose(sound_impacto_1,sound_impacto_2,sound_impacto_3),1,0);
	if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
	ds_list_add(projs,i);
}