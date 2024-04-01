/// @description weas utiles para las oleadas
casillas();	//cargar algunas weas importantes

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

var _music = asset_get_index(global.editor_nivel_base[1]);
var _patio = asset_get_index(global.editor_nivel_base[0]);

ini_open(global.editor_nivel_elegido)
var _nombre = ini_read_string("info","nombre","Nivel Nuevo");
ini_close();
scr_mod_nivel(id,_music,_patio,0,global.editor_nivel_base[2],global.editor_nivel_base[3],_nombre);	//configuracion base del nivel

//cargar pasarelas si las tiene
for (var i = 0; i < array_length(global.editor_oleada_cual); ++i) {
	if global.editor_oleada_cual[i][0] = -1	//cargar info de que debe crearse en el patio
	{
		switch(global.editor_oleada_cual[i][1])
		{
			case "pasarelas":	//cargar la info necesaria de las pasarelas activas
				scr_mod_nivel_pasarela(global.editor_oleada_cual[i][2],global.editor_oleada_cual[i][3],global.editor_oleada_cual[i][4],global.editor_oleada_cual[i][5],global.editor_oleada_cual[i][6]);
			break;
			case "cesped":	//cargar la info necesaria de las pasarelas activas
				scr_mod_nivel_extras(global.editor_oleada_cual[i][2],-1);
			break;
			case "planta":	//cargar la info de las plantas activas
				var _x = real(global.editor_oleada_cual[i][2]);
				var _y = real(global.editor_oleada_cual[i][3]);
				if !collision_rectangle((_x+5)*166,(_y+2)*186,(_x+6)*166,(_y+3)*186,casillas_no_plantable,1,0)
				{
					var _tumba = noone;
					_tumba = collision_rectangle((_x+5)*166+10,(_y+2)*186+10,(_x+5)*166-10+166,(_y+2)*186-10+186,tumba_egipto,0,1);
					if _tumba != noone
					{
						instance_destroy(_tumba);
					}
					var _planta = noone;
					_planta = collision_rectangle((_x+5)*166+10,(_y+2)*186+10,(_x+5)*166-10+166,(_y+2)*186-10+186,oPlantaGeneral,0,1);
					if _planta != noone
					{
						instance_destroy(_planta);
					}
					instance_create_planta(_x,_y,asset_get_index(global.editor_oleada_cual[i][4]),false);
				}
			break;
		}
	}
	if global.editor_oleada_cual[i][1] == "zombi"
	{
		if instance_number(asset_get_index(global.editor_oleada_cual[i][4])) < 1
		{
			instance_create_zombis_muestras(asset_get_index(global.editor_oleada_cual[i][4]),1,1);
		}
	}
}