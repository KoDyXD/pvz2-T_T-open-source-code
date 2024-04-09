/// @description acciones que realizara el zombi
#region vida, morir y escudo
if skeleton_animation_get() == "basico/entrada" and image_index >= 49	//terminar anim de entrada
{
	if image_index >= 49
	{
		skeleton_animation_set("basico/tranquilo");
		image_index = 0;
		mask_index = sprite_index;
	}
}
if skeleton_animation_get() == "basico/sinzombi" and image_index >= 29	//cambiar de sin zombi a recargar el zombi
{
	skeleton_animation_set("basico/recargar");
	image_index = 0;
}
if skeleton_animation_get() == "basico/recargar" and image_index >= 6	//cambiar de recargar a tranquilo
{
	skeleton_animation_set("basico/tranquilo");
	image_index = 0;
}
if escudo < 0 {hp += escudo; escudo = 0;}	//cambiar vida si el escudo es negativo
//hacer que el zombi muera si no tiene vida
if hp <= 0 and estatico == true
{
	image_speed = 1;
	image_blend = c_white;
	estatico = false;
	detener = false;
	mantequilla = false;
	for (var i = 0; i < 12; ++i) {
		alarm[i] = -1;
	}
}

if hp <= 0 and morir = true and skeleton_animation_get() = "basico/tranquilo"
{
	var _mo = instance_create_depth(x,y,0,zombi_pirata_morir);
	with(_mo)
	{
		depth = other.depth;
		sprite_index = other.sprite_index;
		skeleton_animation_set("basico/muerte");
		skeleton_skin_set("basico/muerto");
	}
	audio_play_sound(sound_zombi_canon_morir,5,0);
	instance_destroy();
}
if hp <= 0 and morir = false and skeleton_animation_get() = "basico/tranquilo"
{
	skeleton_animation_set("basico/disparar masivo");
	image_index = 0;
}
#endregion
#region disparar zombiditos
if estatico == false and x <= 2515 and !instance_exists(menu_almanaque_hud_zombis)
{
	if skeleton_animation_get() == "basico/tranquilo" and alarm[0] == -1 and hp > 0 and image_index >= 49	//cambiar a ataque
	{
		if cantidad < 5
		{
			skeleton_animation_set("basico/disparar");
			audio_play_sound(sound_zombi_canon_disparar,5,0);
		}
		else
		{
			if producir = true
			{
				skeleton_animation_set("basico/disparar masivo");
				image_index = 0;
			}
			else
			{
				hp = 0;
				morir = true;
			}
		}
		image_index = 0;
	}
	if skeleton_animation_get() == "basico/disparar"	//lanzar un zombidito
	{
		if image_index >= 2 and image_index <= 3 and alarm[1] == -1
		{
				var i = instance_create_layer(x-55,y-168.75,"npcs",proj_zombi_barril_imp);
				i.recorrido = 60+random_range(-0.5,0.5);
				var _pos = choose(1,2,3);
				if _pos == 1 or _pos == 2
				{
					i.x2 = irandom_range(1790,1800);
				}
				if _pos == 3
				{
					i.x2 = irandom_range(1960,1990);
				}
				i.y2 = y;
				i.x1 = x-55;
				i.y1 = y-168.75;
				i.sombra_y = y;
			cantidad += 1;
			alarm_set(1,10);
		}
		if image_index >= 8
		{
			skeleton_animation_set("basico/sinzombi");
			alarm_set(0,(10*60)+irandom_range(0,120));
		}
	}
}
	if skeleton_animation_get() == "basico/disparar masivo"	//lanzar muchos zombiditos
	{
		if mask_index != spr_vacio {mask_index = spr_vacio;}
		if image_index >= 33 and image_index <= 34 and alarm[1] = -1
		{
			audio_play_sound(sound_zombi_canon_disparar,5,0);
			alarm_set(1,10);
		}
		if image_index >= 38 and image_index <= 39 and alarm[1] == -1
		{
			for (var ii = 0; ii < 5; ++ii) {
				var i = instance_create_layer(x-55,y-168.75,"npcs",proj_zombi_barril_imp);
				i.x2 = irandom_range(1570,2320);
				i.y2 = choose((186*4)-10,(186*5)-10,(186*6)-10,(186*7)-10,(186*8)-10);
				i.x1 = x-55;
				i.y1 = y-168.75;
				i.sombra_y = y;
				i.altura = 300;
			}
			alarm_set(1,10);
		}
		if image_index >= 56	//matar al zombi instaneamente
		{
			var _mo = instance_create_depth(x,y,0,zombi_pirata_morir);
			with(_mo)
			{
				depth = other.depth;
				sprite_index = other.sprite_index;
				skeleton_animation_set("basico/muerte masiva");
				skeleton_skin_set("basico/muerto");
			}
			audio_play_sound(sound_zombi_canon_morir,5,0);
			instance_destroy();
		}
	}
#endregion
#region velocidad del zombi
if detener = true
{
	if estatico = true and image_speed != 0 {image_speed = 0;}
}
#endregion