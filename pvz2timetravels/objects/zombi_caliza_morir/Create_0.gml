/// @description Profundidad de zombis/evita que el zombi de arriba aparezca por encima del de abajo
golpe = true;
var i = audio_play_sound(choose(sound_zombi_camello_caliza_destruir_1,sound_zombi_camello_caliza_destruir_2),5,0);
audio_sound_gain(i,0.7,0);
depth = instance_depth_expl(y-20);

skeleton_skin_set("extras/destruir");
skeleton_animation_set(choose("restos/caliza1","restos/caliza2"));