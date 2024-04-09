/// @description Inserte aquí la descripción
var _inst = instance_create_depth(0,0,0,obj_transicion);
_inst.cantidad = 0.008;
audio_sound_gain(music.duracion,0,2000);
audio_play_sound(sound_oleada_sirena,100,0);

global.destino = nivel_plantilla_0_0;
global.destino_sit = 0;
global.nivel_cual = nivel_tutorial_1_1;