///cargar progreso en cosas extras
function scr_perfil_extras(perfil){
	ini_open(perfil);
	global.cuentaniveles = ini_read_real("Nivel","completados",0);
	global.primeravez = ini_read_real("primera", "vez",false);
	global.extra_pala = ini_read_real("Extra", "pala",false);
	global.extra_almanaque = ini_read_real("Extra","almanaque",false);
	global.extra_monedas = ini_read_real("Extra","monedas",false);
	global.semilla_cantidad_usable = ini_read_real("Extra","semillas_cantidad_usable",6);
	ini_close();
}