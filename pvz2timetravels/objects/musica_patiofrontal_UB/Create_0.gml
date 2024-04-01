/// @description todo lo escencial para que funcione el soundtrack
texture_prefetch("zombi_tut_abanderados");	//cargar texturas del zombi abanderado

///variables de victoria,perder, y recompensa
ganar = true;
finalizado = true;	//El global.finalizado se crea y activa desde el objeto oleadas! este es solo un complemento para evitar bugs en el audio
perder = true;

///contador para organizar el loop del soundtrack
cual = 0;
cual2 = 2;

///control del soundtrack desde el objeto oleada
global.music_patio = false;
intro = false;
oleada_1 = false;
oleada_2 = false;
oleada_3 = false;
oleada_4 = false;
global.m_oleada = false;
control = true;

//reproducir musica al iniciar el nivel
duracion2 = noone;
duracion = noone;
//ESTE SOUNDTRACK ES ULTIMATE BATTLE

scr_nivel_ambiente();	//ambiente