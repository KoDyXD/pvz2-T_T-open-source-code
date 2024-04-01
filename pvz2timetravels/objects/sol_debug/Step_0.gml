/// @description hacer que los soles se muevan
#region//desvanecer y destruir soles
if desvanecer = true {image_xscale -= 0.05; image_yscale -= 0.05; image_alpha -= 0.04; if image_alpha <= 0 or image_xscale <= 0 {instance_destroy()};}
if desvanecer = false {if image_xscale < tam_original {image_xscale += 0.05; image_yscale += 0.05;} if image_alpha < tam_original {image_alpha += 0.04;}}
#endregion
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
		inst = global.ra_id;
		rojo2 = true;
	}
}

if rojo2 = true
{
	if instance_exists(inst)
	{
		if inst.recolectar = true
		{
			mov = false;
			move_towards_point(inst.x-115,inst.y-240,22);
			skeleton_skin_set("rojo");
		}
		else
		{
			speed = 0;
			skeleton_skin_set("amarillo");
		}
	}
	else
	{
		speed = 0;
		skeleton_skin_set("amarillo");
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