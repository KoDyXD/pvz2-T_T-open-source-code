// @description choque con guisantes
var i = instance_place(x,y,proj_maiz);
if (i != noone)
{
	if i.idr = id
	{
			//iluminar zombi
			brillo = 0.13;
			audio_play_sound(choose(sound_coltapulta_impacto_1,sound_coltapulta_impacto_2),1,0);
		if escudo > 0 {escudo -= i.dano;}else{hp -= i.dano;}
		with(i)
		{
			var j = instance_create_layer(x,y,"npcs",efecto_choque_col);
			j.depth = depth;
			instance_destroy();
		}
	}
}