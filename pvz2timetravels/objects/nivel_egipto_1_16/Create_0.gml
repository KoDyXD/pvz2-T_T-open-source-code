/// @description weas utiles para las oleadas
alarm_set(3,1);

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

scr_mod_nivel(id,musica_egipto_special_1,spr_patio_egipto,2,15,1,"Bolera 1");	//configuracion base del nivel
scr_mod_nivel_extras(-1,-1);

//zombis de muestra
instance_create_zombis_muestras(zombi_egipto_basico,3,5);
instance_create_zombis_muestras(zombi_egipto_caracono,2,4);
instance_create_zombis_muestras(zombi_egipto_caracubo,2,3);
instance_create_zombis_muestras(zombi_egipto_camello,1,2);
instance_create_zombis_muestras(zombi_egipto_explorador,2,3);

scr_nivel_desafios(
	[
		[objetivo_bolera,4],
		[objetivo_planta_proteger,3,1,planta_coltapulta],
		[objetivo_planta_proteger,2,3,planta_coltapulta],
		[objetivo_planta_proteger,3,5,planta_coltapulta],
	]
)