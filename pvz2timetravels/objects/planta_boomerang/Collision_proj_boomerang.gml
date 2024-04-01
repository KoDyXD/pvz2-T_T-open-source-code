/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_meeting(x,y,pr) and pr.giro = true
{
	with(pr) {instance_destroy();}
	skeleton_animation_set("atrapar");
	audio_sound_gain(duracion,0,200);
	duracion = noone;
	image_index = 0;
}