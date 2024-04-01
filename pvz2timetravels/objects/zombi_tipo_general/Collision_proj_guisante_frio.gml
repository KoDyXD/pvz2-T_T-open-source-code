// @description choque con guisantes frio
var i = instance_place(x,y,proj_guisante_frio);
if (i != noone)
{
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
		audio_play_sound(choose(sound_hielaguisantes_impacto_1,sound_hielaguisantes_impacto_2,sound_hielaguisantes_impacto_3),1,0);
	if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
	with(i) {var j = instance_create_layer(x,y,"npcs",efecto_choque_guisantefrio);j.depth = depth;instance_destroy();}
}