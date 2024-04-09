/// @description choque
var i = instance_place(x,y,proj_guisante);
if (i != noone)
{
	if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
	if escudo > 0 {audio_play_sound( choose( sound_impacto_cono_1, sound_impacto_cono_2), 1, 0);}else{audio_play_sound( choose( sound_impacto_1, sound_impacto_2, sound_impacto_3), 1, 0);}
		//iluminar zombi
		if image_blend = c_white or image_blend = c_silver {image_blend = c_silver; alarm_set(5,10);}
		with(i) {instance_destroy();}
}