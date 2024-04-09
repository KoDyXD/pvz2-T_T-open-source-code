/// @description detecciones
if hp > 3000
{
	if skeleton_animation_get() = "tranquilo" and alarm[0] = -1 {alarm_set(0,irandom_range(1,350));}
	if skeleton_animation_get() = "parpadear" and image_index >= 24 {skeleton_animation_set("tranquilo");image_index = 0;}
	if skeleton_animation_get() = "no sonreir" and image_index >= 39 {skeleton_animation_set("tranquilo");image_index = 0;}
	if skeleton_animation_get() = "sonriendo" and image_index >= 39 {skeleton_animation_set("tranquilo");image_index = 0;}	
}
///cambiar textura 1
if hp <= 3000 and hp > 2000
{
	if skeleton_animation_get() = "danada 1" and image_index >= 24 {alarm_set(0,irandom_range(1,350)); image_speed = 0; image_index = 0;}
	if skeleton_animation_get() != "danada 1" {alarm_set(0,1); image_speed = 0; image_index = 0;}
}

///cambiar textura 2
if hp <= 2000 and hp > 1000
{
	if skeleton_animation_get() = "danada 2" and image_index >= 24 {alarm_set(0,irandom_range(1,350)); image_speed = 0; image_index = 0;}
	if skeleton_animation_get() != "danada 2" {alarm_set(0,1); image_speed = 0; image_index = 0;}
}

///cambiar textura 3
if hp <= 1000
{
	if skeleton_animation_get() = "danada 3" and image_index >= 24 {alarm_set(0,irandom_range(1,350)); image_speed = 0; image_index = 0;}
	if skeleton_animation_get() != "danada 3" {alarm_set(0,1); image_speed = 0; image_index = 0;}
}

///destruir si no tiene vida
if hp <= 0
{
	audio_play_sound(sound_comiendo_final, 1, 0);
	instance_destroy();
}