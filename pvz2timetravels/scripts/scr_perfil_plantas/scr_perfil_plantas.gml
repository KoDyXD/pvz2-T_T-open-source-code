///cargar el progreso de las plantas
function scr_perfil_plantas(perfil){
	ini_open(perfil);
	global.cuentasem = ini_read_real("Semilla", "cuantas", 0);
	global.semilla_lanzaguiasntes = ini_read_real("Semilla", "lanzaguisantes", true);
	global.semilla_girasol = ini_read_real("Semilla", "girasol", false);
	global.semilla_nuez = ini_read_real("Semilla", "nuez", false);
	global.semilla_papapum = ini_read_real("Semilla", "papapum", false);
	global.semilla_coltapulta = ini_read_real("Semilla","coltapulta", false);
	global.semilla_hielaguisantes = ini_read_real("Semilla","hielaguisantes", false);
	global.semilla_boomerang = ini_read_real("Semilla","boomerang", false);
	global.semilla_bolos_nueces = ini_read_real("Semilla","nueces", false);
	global.semilla_comepiedras = ini_read_real("Semilla","comepiedras", false);
	global.semilla_carnivora = ini_read_real("Semilla","carnivora", false);
	global.semilla_repetidora = ini_read_real("Semilla","repetidora", false);
	global.semilla_birasol = ini_read_real("Semilla","birasol", false);
	global.semilla_bonkchoy = ini_read_real("Semilla","bonkchoy", false);
	
	global.semilla_lanzamaiz = ini_read_real("Semilla","lanzamaiz", false);
	global.semilla_frijuelle = ini_read_real("Semilla","frijuelle", false);
	global.semilla_pinchohierba = ini_read_real("Semilla","pinchohierba", false);
	global.semilla_cococanon = ini_read_real("Semilla","cococanon", false);
	global.semilla_bocadedragon = ini_read_real("Semilla","bocadedragon", false);
	global.semilla_petacereza = ini_read_real("Semilla","petacereza", false);
	global.semilla_pinchorroca = ini_read_real("Semilla","pinchorroca", false);
	global.semilla_chilefantasma = ini_read_real("Semilla","chilefantasma", false);
	global.semilla_trampamenta = ini_read_real("Semilla","trampamenta", false);
	ini_close();
}