// @description choque con guisantes
var i = instance_place(x,y,proj_mantequilla);
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
			var j = instance_create_layer(x,y,"npcs",efecto_choque_mantequilla);
			j.depth = depth;
			instance_destroy();
		}
		estatico = true;
		mantequilla = true;
		detener = true;
		quieto = true;
		quieto2 = true;
		for (var i = 0; i < 12; ++i) {
			alarma_cual_tiempo[i] = alarm[i];
			if i != 7 and i != 3 and i != 8 and i != 9 and i != 10 and i != 11
			{
				alarm[i] = -1;
			}
		}
		alarm_set(8,8*60);	//tiempo para hacer que el zombi vuelva a moverse
		alarm_set(10,8*60);	//tiempo para quitar efecto de mantequilla
	}
}