/// @description weas utiles para las oleadas
//tumbas
instance_create_tumba(2,1,tumba_egipto);
instance_create_tumba(4,1,tumba_egipto);
instance_create_tumba(8,1,tumba_egipto);
instance_create_tumba(1,2,tumba_egipto);
instance_create_tumba(9,2,tumba_egipto);
instance_create_tumba(1,4,tumba_egipto);
instance_create_tumba(5,4,tumba_egipto);
instance_create_tumba(3,5,tumba_egipto);
instance_create_tumba(8,5,tumba_egipto);

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

scr_mod_nivel(id,musica_egipto,spr_patio_egipto,0,20,1,"Antiguo Egipto 1-8");	//configuracion base del nivel

//zombis de muestra
global.quietos = true;	//hace que los zombis no se mmuevan
instance_create_zombis_muestras(zombi_egipto_basico,2,3);
instance_create_zombis_muestras(zombi_egipto_caracono,1,2);
instance_create_zombis_muestras(zombi_egipto_caracubo,1,2);
instance_create_zombis_muestras(zombi_egipto_ra,1,2);
instance_create_zombis_muestras(zombi_egipto_explorador,1,2);
instance_create_zombis_muestras(zombi_egipto_faraon,1,1);