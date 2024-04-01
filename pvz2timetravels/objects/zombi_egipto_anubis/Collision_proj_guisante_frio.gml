// @description choque con guisantes frio
var i = instance_place(x,y,proj_guisante_frio);
if (i != noone)
{
		//relantizar
		if image_blend = c_white or image_blend = c_silver
		{
			image_speed = image_speed/1.5;
			velocidad = velocidad/1.5;
			velo1 = velo1/1.5;
			velo2 = velo2/1.5;
			velo3 = velo3/1.5;
			mor = mor*1.5;
		}
		//iluminar zombi
		image_blend = c_blue;
		alarm_set(2,600);
		alarm_set(5,-1);
		audio_play_sound(choose(sound_impacto_1,sound_impacto_2,sound_impacto_3),1,0);
	if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
	with(i) {instance_destroy();}
}