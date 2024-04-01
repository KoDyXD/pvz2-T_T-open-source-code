/// @description Insert description here
depth = -9;
desafio[0] = noone;
frase = [
	["soles",0],
]
cual = 0;
intensidad = 0;
dibujar = true;
frame = 0;

instance_deactivate_all(true);
instance_activate_object(obj_control_niveles_extras);
instance_activate_object(obj_transicion);
instance_activate_object(musica_debug);
instance_activate_object(camara);
instance_activate_object(pat_decos);
instance_activate_object(pat_decos_extras);
instance_activate_object(casillas_no_pasarela);
instance_activate_object(casillas_pasarelas);
instance_activate_object(pat_pirata_agua);

camara.funcionar = false;
alarm_set(1,85);