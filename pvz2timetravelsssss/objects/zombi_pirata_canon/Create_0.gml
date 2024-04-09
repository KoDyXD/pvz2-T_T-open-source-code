/// @description weas para que funcione
///cambiar frame de inicio
skeleton_skin_set("basico/entero");
skeleton_animation_set("basico/tranquilo");
image_index = irandom_range(0,30);
mask_index = spr_vacio;
cantidad = 0;
producir = true;
morir = false;
vel = image_speed;

///profundidad de zombis / evita que el zombi de arriba aparezca por encima del de abajo
depth = instance_depth_zombi(y);

//comenzar a caminar
if !instance_exists(camara)
{
	//alarma para disparar zombiditos
	alarm_set(0,(10*60)+irandom_range(0,120));
	x = irandom_range(2475,2515);
	detener = false;
	skeleton_animation_set("basico/entrada");
	image_index = irandom_range(0,20);
	if !audio_is_playing(sound_zombi_canon_entrada) {audio_play_sound(sound_zombi_canon_entrada,5,0);}
}