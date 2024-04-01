/// @description weas utiles para que funcione
///profundidad
skeleton_animation_set("spawn");
skeleton_skin_set("normal");
depth = instance_depth_plant(y);

//tumba
inst = noone;
inst = instance_place(x,y,tumba_egipto);
if inst != noone {inst.inst = id;}

audio_play_sound(sound_comepiedras_comer,10,0);

instance_create_depth(x,y,depth,efect_tierra_comepiedras);