// @description choque con guisantes
var i = instance_place(x,y,proj_col);
if (i != noone)
{
	if i.idr = id
	{
		//iluminar zombi
		if image_blend = c_white or image_blend = c_silver {image_blend = c_silver; alarm_set(5,10);}
		audio_play_sound(choose(sound_coltapulta_impacto_1,sound_coltapulta_impacto_2),1,0);
	if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
	with(i) {instance_destroy();}
	}
}