/// @description Inserte aquí la descripción
if x < xx {x = xx;}
if x > xstart {x = xstart;}

global.vol_musica = (abs((x-xx)/675))*(abs((x-xx)/675));
image_angle = (x+xx)/1.5;

audio_group_set_gain(musica,global.vol_musica,0);
audio_group_set_gain(grupo_musica_frontal,global.vol_musica,0);
audio_group_set_gain(grupo_musica_egipto,global.vol_musica,0);
audio_group_set_gain(grupo_musica_pirata,global.vol_musica,0);
audio_group_set_gain(grupo_musica_otros,global.vol_musica,0);
audio_group_set_gain(audiogroup1,global.vol_musica,0);	//salvaje oeste
audio_group_set_gain(audiogroup2,global.vol_musica,0);	//cuevas congeladas
audio_group_set_gain(grupo_musica_pirata1,global.vol_musica,0)	//edad oscura
audio_group_set_gain(grupo_musica_pirata2,global.vol_musica,0)	//ciudad perdida
audio_group_set_gain(grupo_musica_pirata3,global.vol_musica,0)	//pantano del jurasico
audio_group_set_gain(grupo_musica_pirata4,global.vol_musica,0)	//playa de la gran ola
audio_group_set_gain(grupo_musica_pirata5,global.vol_musica,0)	//futuro lejano
audio_group_set_gain(grupo_musica_pirata6,global.vol_musica,0)	//vueltacasete de neon
audio_group_set_gain(grupo_musica_pirata7,global.vol_musica,0)	//tiempos modernos