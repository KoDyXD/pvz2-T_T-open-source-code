/// @description alarma de spawn de semillas
depth = -4;

alarm_set(0, random_range(200, 300));

///contador de semillas
global.semillas = 0;

///evitar que se generen semillas de mas
generar = false;
xx = 0.1;

///aleatorizar semillas
randomize();

//sonido de la cinta
var duracion = audio_play_sound(sound_semillero_cinta,10,1);
audio_sound_gain(duracion,0.2,0);

skeleton_animation_set("mover2");

x = camera_get_view_x(view_camera[0])+150;
y = camera_get_view_y(view_camera[0]);