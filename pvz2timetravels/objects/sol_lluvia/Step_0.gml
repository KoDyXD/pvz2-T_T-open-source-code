/// @description hacer que los soles se muevan
#region//desvanecer y destruir soles
if desvanecer = true {image_xscale -= 0.05; image_yscale -= 0.05; image_alpha -= 0.04; if image_alpha <= 0 or image_xscale <= 0 {instance_destroy()};}
if desvanecer = false {if image_xscale < tam_original {image_xscale += 0.05; image_yscale += 0.05;} if image_alpha < tam_original {image_alpha += 0.04;}}
#endregion
//mover soles al punto elegido
if mov = true {if distance_to_point(x,elegirfila) > 10 {y += caer;}}

#region//hacer que el sol desaparezca cuando llega al contador
if place_meeting(x,y,sol_contador_solar)
{
	speed -= 1;
	desvanecer = true;
	if speed <= 0 {speed = 0;}
}
#endregion
#region//sol rojo
if rojo = true
{
	if inst = noone and global.recolectar = true and alarm[1] = -1
	{
		//inst = global.ra_id;
		var _cual = false;
		for (var i = 0; i < array_length(global.ra_id); ++i) {
			_cual = choose(false,true);
			if _cual == true and instance_exists(global.ra_id[i])
			{
				inst = global.ra_id[i];
				continue;
			}
			if _cual = false and i == array_length(global.ra_id)
			{
				i = 0;
			}
		}
		rojo2 = true;
		rojo = false;
	}
}
if rojo2 = true
{
	if instance_exists(inst)
	{
		if inst.aceptar_soles == true
		{
			mov = false;
			move_towards_point(inst.x-115,inst.y-240,22);
			skeleton_skin_set("rojo");
		}
		else
		{
			speed = 0;
			skeleton_skin_set("amarillo");
			rojo = true;
			rojo2 = false;
			inst = noone;
			alarm_set(1,irandom_range(20,35));
		}
	}
	else
	{
		speed = 0;
		skeleton_skin_set("amarillo");
		rojo = true;
		rojo2 = false;
		inst = noone;
		alarm_set(1,irandom_range(20,35));
	}
}
#endregion
#region absorbido por el zombi ra
if instance_exists(inst)
{
	if skeleton_skin_get() == "rojo" and inst.aceptar_soles == true and point_distance(x,y,inst.x-115,inst.y-240) <= 23
	{
		audio_play_sound(choose(sound_zombi_ra_absorber_1,sound_zombi_ra_absorber_2),5,0);
		var _rec = instance_create_depth(x,y,depth,sol_recolectado);
		_rec.image_index = image_index;
		inst.soles[array_length(inst.soles)] = valor;
		instance_destroy();
	}
}
#endregion