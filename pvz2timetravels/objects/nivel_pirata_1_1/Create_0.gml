/// @description weas utiles para las oleadas

global.selector = false;	//selector de semillas
global.xz = 1740;	//donde caera la recompensa en X
global.yz = 1000;	//donde caera la recompensa en Y
global.finalizado = false;	//sirve para dar por finalizado el nivel en este objeto y en el objeto musica
global.quietos = true;	//hace que los zombis no se muevan

nombrexd = "NO DEBERIAS PODER LEER ESTO 0.o";	//nombre del nivel
menorar = false;	//controla cuando se activa la animacion
limite = 448;		//establece el limite de tamano de la barra
aumentar = 0;		//almacena el tamano de la barra
aumentar2 = 0;		//almacena el tamano de la barra en partes
oleada_max = 0;		//cantidad de oleadas totales
oleada_bandera = 0;	//cantidad de banderas a crear
partes = 0;	//saca el tamano a aumentar la barra pero en partes
music = false;	//controla cuando se ejectura la revision de oleada para la musica
oleada = 0;				//sirve para especificar que oleada de zombis se creara
comenzar = true;		//activador especial
activar = false;		//activa la alarma 1 para crear cosas como los semilleros
adelantado = false;		//si no hay zombis esta variable adelantara la siguiente oleada
recompensa = false;	//permite obtener la recompensa
lvl_patio = noone;
scr_mod_nivel(id,musica_pirata,spr_patio_pirata,1,12,2,"Mares Piratas 2-1");	//configuracion base del nivel
scr_mod_nivel_pasarela(1,0,1,0,1);

//zombis de muestra
instance_create_zombis_muestras(zombi_pirata_basico,1,1);
instance_create_zombis_muestras(zombi_pirata_caracono,1,1);
instance_create_zombis_muestras(zombi_pirata_caracubo,1,1);
instance_create_zombis_muestras(zombi_pirata_gaviotero,1,1);
instance_create_zombis_muestras(zombi_pirata_espadachin,1,1);
instance_create_zombis_muestras(zombi_pirata_canon,1,1);
instance_create_zombis_muestras(zombi_pirata_capitan,1,1);
instance_create_zombis_muestras(zombi_pirata_barrilero,1,1);
instance_create_zombis_muestras(zombi_pirata_zombidito,1,1);
instance_create_zombis_muestras(zombi_pirata_zombistein,1,1);