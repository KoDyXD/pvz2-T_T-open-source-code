/// @description descargar texturas y sonidos
//extras
texture_flush("universo_general");
texture_flush("universo_pirata")
texture_flush("universo_egipto");
texture_flush("universo_tutorial")
texture_flush("patio_egipto");
texture_flush("patio_frontal");
texture_flush("patio_pirata");
texture_flush("patio_pirata1");	//patio debug
texture_flush("patio_pirata2");	//patio de salvaje oeste
texture_flush("patio_pirata3");	//patio de cuevas congeladas
texture_flush("patio_pirata4");	//patio de edad oscura
texture_flush("patio_pirata5");	//patio de ciudad perdida
texture_flush("patio_pirata6");	//patio de pantano del jurasico
texture_flush("patio_pirata7");	//patio de playa de la gran ola
texture_flush("patio_pirata8");	//patio de futuro lejano
texture_flush("patio_pirata9");	//patio de vueltacasete de neon
texture_flush("extras");
texture_flush("semilleros");
texture_flush("menu_general");
texture_flush("fuentes");
texture_flush("fondo_patio");
texture_flush("menu_botones");
texture_flush("menu_credito");
texture_flush("menu_recompensa");
texture_flush("menu_niveles");
texture_flush("menu_inicio");
texture_flush("menu_almanaque");
texture_flush("semilleros_plantas");
texture_flush("semilleros_zombis");
texture_flush("menu_perfiles");
texture_flush("objetivos");
texture_flush("menu_perfiles1");

///musica
audio_group_unload(grupo_musica_egipto);	//antiguo egipto
audio_group_unload(grupo_musica_pirata);	//mares piratas
audio_group_unload(grupo_musica_otros);	//musica extra
audio_group_unload(grupo_musica_frontal);	//patio frontal
audio_group_unload(audiogroup1);	//musica de salvaje oeste
audio_group_unload(audiogroup2);	//musica de cuevas congeladas
audio_group_unload(grupo_musica_pirata1);	//musica edad oscura
audio_group_unload(grupo_musica_pirata2);	//musica ciudad perdida
audio_group_unload(grupo_musica_pirata3);	//musica pantano del jurasico
audio_group_unload(grupo_musica_pirata4);	//musica playa de la gran ola
audio_group_unload(grupo_musica_pirata5);	//musica futuro lejano
audio_group_unload(grupo_musica_pirata6);	//musica vueltacasete de neon
audio_group_unload(grupo_musica_pirata7);	//musica tiempos modernos
audio_group_set_gain(grupo_ambiente_all,0.25,0);

//reinciar algunas weas
global.moverse = 0;