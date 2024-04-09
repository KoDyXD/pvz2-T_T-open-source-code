/// @description detecciones
if hp <= 0
{
	instance_destroy();
}

if collision_rectangle(x-80,y-25,x+80,y-50,zombi_tipo_tierra,0,1) or collision_rectangle(x-80,y-25,x+80,y-50,zombi_pirata_barril,0,1)
{
	var _ataque = true;
	var _inst = collision_rectangle(x-80,y-25,x+80,y-50,zombi_tipo_tierra,0,1)
	if _inst != noone {if _inst.accion != "normal" {_ataque = false;}}
	if skeleton_animation_get() != "atacar" and _ataque = true
	{
		skeleton_animation_set("atacar");
		image_index = 0;
	}
}
else if skeleton_animation_get() = "atacar"
{
	skeleton_animation_set("tranquilo");
	image_index = 0;
}

if skeleton_animation_get() == "parpadear" and image_index >= 59
{
	skeleton_animation_set("tranquilo");
	image_index = 0;
}

if skeleton_animation_get() == "tranquilo" and image_index >= 59 and alarm[1] = -1
{
	alarm_set(1,random_range(150,300));
	skeleton_animation_set("parpadear");
	image_index = 0;
}

if skeleton_animation_get() = "atacar" and image_index >= 10 and image_index <= 11 and alarm[0] = -1
{
	audio_play_sound(choose(sound_pinchohierba_ataque_1,sound_pinchohierba_ataque_2,sound_pinchohierba_ataque_3,sound_pinchohierba_ataque_4,sound_pinchohierba_ataque_5),5,0);
	if collision_rectangle(x-80,y-25,x+80,y-50,zombi_pirata_barril,0,1) {hp = 0;}
	instance_create_layer(x,y-25,"npcs",proj_pinchohierba);
	alarm_set(0,10);
}