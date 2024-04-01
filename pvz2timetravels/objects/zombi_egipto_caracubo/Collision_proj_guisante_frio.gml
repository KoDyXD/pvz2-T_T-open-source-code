/// @description choque
var i = instance_place(x,y,proj_guisante_frio);
if (i != noone)
{
	if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
			//relantizar
			if image_blend != $FFB93C
			{
				image_speed = image_speed/1.5;
				vel = vel/1.5;
				audio_play_sound(sound_congelar,1,0);
			}
		//iluminar zombi
		brillo = 0.13;
		image_blend = $FFB93C;
		alarm_set(7,10*60);
		if escudo > 0 {audio_play_sound(choose(sound_impacto_metal_1,sound_impacto_metal_2),1,0);}else{audio_play_sound(choose(sound_hielaguisantes_impacto_1,sound_hielaguisantes_impacto_2,sound_hielaguisantes_impacto_3),1,0);}
	with(i) {var j = instance_create_layer(x,y,"npcs",efecto_choque_guisantefrio);j.depth = depth;instance_destroy();}
}