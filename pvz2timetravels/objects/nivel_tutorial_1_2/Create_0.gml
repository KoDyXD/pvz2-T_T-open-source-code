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

scr_mod_nivel(id,musica_patiofrontal,spr_patio_tutorial,-1,7,1,"Tutorial 2");	//configuracion base del nivel
scr_mod_nivel_extras(2,-1);

//camara del nivel
if global.cuentasem < 6
{
	var frase = instance_create_depth(1472.5,1116,0,camara2);
}
else
{
	var frase = instance_create_depth(1472.5,1116,0,camara);
}
var _frase = global.nombre;	//recoger nombre del usuario
_frase = string_replace(_frase,".ini","");	//recoger nombre del usuario sin .ini
frase.frase_pers = true;	//activar frase personalizada
frase.frase = "Patio frontal de "+string(_frase);	//frase personalizada

//zombis de muestra
instance_create_zombis_muestras(zombi_tut_basico,3,5);