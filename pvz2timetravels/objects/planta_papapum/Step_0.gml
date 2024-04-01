/// @description detecciones
///destruir este objeto si esta listo y choca con un zombi
if place_meeting(x,y,zombi_tipo_general) and pestaneo = true and ataquelisto = true
{
	skeleton_animation_set("explotar");
	pestaneo = false;
}

//explotar
if skeleton_animation_get() = "explotar" and image_index >= 7
{
	instance_create_layer(x,y,"npcs",expl_papapum);
	instance_destroy();
}

//cambiar sprite a armada
if skeleton_animation_get() = "armar" and image_index >= 12
{
	accion = "nodetectar";
	hp = 10000;
	mask_index = spr_debug_planta_hitbox_1;
	ataquelisto = true;
	skeleton_animation_set("tranquilo");
	image_index = 0;
}

///destruir si no tiene vida
if hp <= 0
{
	if accion != "nodetectar"
	{
		audio_play_sound(sound_comiendo_final, 1, 0);
		instance_destroy();
	}
	else
	{
		instance_create_layer(x,y,"npcs",expl_papapum);
		instance_destroy();
	}
}

///cambiar sprite despues de plantarse
if skeleton_animation_get() = "plantar" and image_index >= 19
{
	skeleton_animation_set("desarmada");
	image_index = 0;
}

//pestanear
if skeleton_animation_get() = "tranquilo" or skeleton_animation_get() = "parpadear" and image_index >= 59
{
	skeleton_animation_set(choose("tranquilo","parpadear"));
	image_index = 0;
}