/// @description weas utiles para las oleadas
//plantas ya creadas
instance_create_planta(6,2,planta_girasol,false);
instance_create_planta(5,3,planta_girasol,false);
instance_create_planta(6,3,planta_girasol,false);
instance_create_planta(6,4,planta_girasol,false);

//tumbas
instance_create_tumba(4,4,tumba_egipto);
instance_create_tumba(5,5,tumba_egipto);
instance_create_tumba(6,5,tumba_egipto);
instance_create_tumba(8,5,tumba_egipto);
instance_create_tumba(9,4,tumba_egipto);
instance_create_tumba(5,1,tumba_egipto);
instance_create_tumba(5,2,tumba_egipto);
instance_create_tumba(8,1,tumba_egipto);
instance_create_tumba(8,3,tumba_egipto);

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

scr_mod_nivel(id,musica_egipto_special_2,spr_patio_egipto,0,12,1,"Antiguo Egipto 1-3");	//configuracion base del nivel

//zombis de muestra
instance_create_zombis_muestras(zombi_egipto_basico,2,3);
instance_create_zombis_muestras(zombi_egipto_zombidito,2,3);
instance_create_zombis_muestras(zombi_egipto_caracono,1,1);
instance_create_zombis_muestras(zombi_egipto_caracubo,1,1);
instance_create_zombis_muestras(zombi_egipto_ra,1,1);
instance_create_zombis_muestras(zombi_egipto_camello,1,1);

scr_nivel_desafios(
	[
		[objetivo_soles,1250],
		[objetivo_no_solares],
	]
);