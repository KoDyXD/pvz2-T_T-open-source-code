/// @description organizador de niveles, extras y semillas
show_debug_overlay(true);

_per_x = display_get_width();
_per_y = display_get_height();

_asp = display_get_width()/display_get_height();

_per_y = round(_per_x/_asp);
_per_x = round(_per_y*_asp);

if _per_x & 1
{
	_per_x++;
}

surface_resize(application_surface,_per_x,_per_y);
window_set_size(_per_x,_per_y);

global.quietos = true;	//hacer que los zombis se queden quietos al inicio de un nivel
global.mouse = true;	//si se usa mouse o no
global.nivel_cual = nivel_tutorial_1_1;

switch(os_type)
{
	case os_windows: global.mouse = true; break;
	case os_android: global.mouse = false; break;
}

//show_debug_overlay(true);
instance_create_depth(0,0,0,obj_click);

instance_create_depth(0,0,0,obj_transicion_inicio);	//gatito

//opciones graficas
global.pantalla_completa = false;

//weas para los perfiles
global.usuarios[0] = "USUARIO DAVE";
global.usuarios[1] = noone;
global.usuarios[2] = noone;
global.usuarios[3] = noone;
global.nombre = "USUARIO DAVE";
global.perfiles = 0;
global.primeravez2 = false;

global.moverse = 0;	//poder moverse en los mapas
zona = 0;	//zona a retroceder
nivel = 0;	//nivel

global.primeravez = false;	//primera vez en el juego
global.extra_monedas = 0;	//contador de monedas
global.cuentasem = 0;	//contador de semillas
global.cuentaniveles = 0;	//contador de niveles
global.destino = noone;		//a que room iras si se presiona un boton o mundo
global.destino_sit = 0;		//que hara durante el cambio de room

//cantidad de niveles creados en el editor
global.editor_nivel_cantidad =
[
	["DEBUGXD"],
];
global.editor_nivel_cant_tamano = 0;

//editor de niveles
global.editor_nivel_base = ["spr_patio_editor","musica_patiofrontal",1,1];

//oleada en la que se crearan los zombis en el modo editor
global.editor_oleada_cual =
[
	[0,"zombi",0,0,"nulo",1,1],
];

#region niveles
//tutorial
global.nivel_tutorial[0] = true;
global.nivel_tutorial[1] = false;
global.nivel_tutorial[2] = false;
global.nivel_tutorial[3] = false;
global.nivel_tutorial[4] = false;
global.nivel_tutorial[5] = false;

///egipto
global.nivel_egipto[0] = true;
global.nivel_egipto[1] = false;
global.nivel_egipto[2] = false;
global.nivel_egipto[3] = false;
global.nivel_egipto[4] = false;
global.nivel_egipto[5] = false;
global.nivel_egipto[6] = false;
global.nivel_egipto[7] = false;
global.nivel_egipto[8] = false;
global.nivel_egipto[9] = false;
global.nivel_egipto[10] = false;
global.nivel_egipto[11] = false;
global.nivel_egipto[12] = false;
global.nivel_egipto[13] = false;
global.nivel_egipto[14] = false;
global.nivel_egipto[15] = false;
global.nivel_egipto[16] = false;
global.nivel_egipto[17] = false;
global.nivel_egipto[18] = false;
global.nivel_egipto[19] = false;
global.nivel_egipto[20] = false;
global.nivel_egipto[21] = false;
global.nivel_egipto[22] = false;
global.nivel_egipto[23] = false;
global.nivel_egipto[24] = false;
global.nivel_egipto[25] = false;

//mares piratas
global.nivel_pirata[0] = true;
global.nivel_pirata[1] = false;
global.nivel_pirata[2] = false;
global.nivel_pirata[3] = false;
global.nivel_pirata[4] = false;
global.nivel_pirata[5] = false;
global.nivel_pirata[6] = false;
global.nivel_pirata[7] = false;
global.nivel_pirata[8] = false;
global.nivel_pirata[9] = false;
global.nivel_pirata[10] = false;
global.nivel_pirata[11] = false;
global.nivel_pirata[12] = false;
global.nivel_pirata[13] = false;
global.nivel_pirata[14] = false;
global.nivel_pirata[15] = false;
global.nivel_pirata[16] = false;
global.nivel_pirata[17] = false;
global.nivel_pirata[18] = false;
global.nivel_pirata[19] = false;
global.nivel_pirata[20] = false;
global.nivel_pirata[21] = false;
global.nivel_pirata[22] = false;
global.nivel_pirata[23] = false;
global.nivel_pirata[24] = false;
global.nivel_pirata[25] = false;
#endregion
//extras
global.trucos = false;	//saber si los trucos se han activado o desactivado
global.extra_pala = false;	//activa o desactiva la pala
global.extra_almanaque = true;	//activa o desactiva el almanaque
global.semilla_cantidad_usable = 6;	//es el valor que indica cuantas semillas se pueden elegir en un nivel

//semillas
global.semilla_lanzaguiasntes = true;
global.semilla_girasol = false;
global.semilla_nuez = false;
global.semilla_papapum = false;

global.semilla_coltapulta = false;
global.semilla_hielaguisantes = false;
global.semilla_boomerang = false;
global.semilla_bolos_nueces = false;
global.semilla_comepiedras = false;
global.semilla_carnivora = false;
global.semilla_repetidora = false;
global.semilla_birasol = false;
global.semilla_bonkchoy = false;

global.semilla_lanzamaiz = false;
global.semilla_frijuelle = false;
global.semilla_pinchohierba = false;
global.semilla_cococanon = false;
global.semilla_bocadedragon = false;
global.semilla_petacereza = false;
global.semilla_pinchorroca = false;
global.semilla_chilefantasma = false;
global.semilla_trampamenta = false;
//volumen
global.vol_musica = 1;
global.vol_efectos = 1;
global.vol_musica_posY = 0;
global.vol_efectos_posY = 0;

audio_group_load(grupo_ambiente_all);	//cargar ambiente de fondo
audio_group_set_gain(grupo_ambiente_all,0.25,0)

//leer inis
ini_open("general.ini");
global.vol_musica_posY = ini_read_real("volumen","musica_posY", global.vol_musica_posY);
global.vol_efectos_posY = ini_read_real("volumen","efectos_posY", global.vol_efectos_posY);
global.vol_musica = ini_read_real("volumen","musica", global.vol_musica);
global.vol_efectos = ini_read_real("volumen","efectos", global.vol_efectos);

global.usuarios[0] = ini_read_string("usuarios","slot1",global.usuarios[0]);
global.usuarios[1] = ini_read_string("usuarios","slot2",global.usuarios[1]);
global.usuarios[2] = ini_read_string("usuarios","slot3",global.usuarios[2]);
global.usuarios[3] = ini_read_string("usuarios","slot4",global.usuarios[3]);
global.nombre = ini_read_string("usuarios","nombre",global.nombre);
global.perfiles = ini_read_real("usuarios","perfiles",global.perfiles);
global.primeravez2 = ini_read_string("primera","vez",global.primeravez2);

global.pantalla_completa = ini_read_real("extras","pantalla_completa",false);

//archivos del editor
global.editor_nivel_cant_tamano = ini_read_real("Editor","lvl cantidad",0);
for (var i = 1; i <= global.editor_nivel_cant_tamano; ++i) {
    global.editor_nivel_cantidad[i] = ini_read_string("Editor","lvleditor "+string(i),"no");
}

ini_write_string("Editor","tip","El nombre del archivo NO debe repetirse/The file name must NOT be repeated");
ini_close();

audio_group_set_gain(musica,global.vol_musica,0);	//musica general
audio_group_set_gain(grupo_musica_frontal,global.vol_musica,0);	//patio frontal
audio_group_set_gain(grupo_musica_egipto,global.vol_musica,0);	//antiguo egipto
audio_group_set_gain(grupo_musica_pirata,global.vol_musica,0);	//mares piratas
audio_group_set_gain(grupo_musica_otros,global.vol_musica,0);	//musica extra que no tiene motivos para existir
audio_group_set_gain(audiogroup1,global.vol_musica,0);	//salvaje oeste
audio_group_set_gain(audiogroup2,global.vol_musica,0);	//cuevas congeladas
audio_group_set_gain(grupo_musica_pirata1,global.vol_musica,0)	//edad oscura
audio_group_set_gain(grupo_musica_pirata2,global.vol_musica,0)	//ciudad perdida
audio_group_set_gain(grupo_musica_pirata3,global.vol_musica,0)	//pantano del jurasico
audio_group_set_gain(grupo_musica_pirata4,global.vol_musica,0)	//playa de la gran ola
audio_group_set_gain(grupo_musica_pirata5,global.vol_musica,0)	//futuro lejano
audio_group_set_gain(grupo_musica_pirata6,global.vol_musica,0)	//vueltacasete de neon
audio_group_set_gain(grupo_musica_pirata7,global.vol_musica,0)	//tiempos modernos
audio_group_set_gain(efectos,global.vol_efectos,0);	//efectos de sonido

if os_type == os_windows
{
	window_set_fullscreen(global.pantalla_completa);
	if global.pantalla_completa = false {window_set_size(_per_x/1.25,_per_y/1.25);}
}

scr_perfil_plantas(global.nombre);	//progreso de plantas
scr_perfil_niveles(global.nombre);	//progreso de niveles
scr_perfil_extras(global.nombre);	//progreso de extras