/// @description comprobaciones
#region//crear recompensa
if recompensa = true and not instance_exists(zombi_tipo_general)
{
	global.nivel_cual = nivel_egipto_1_25;	//siguiente nivel
	if global.trucos == false	//los trucos estan desactivados
	{
		if global.nivel_egipto[24] = false	//si es la primera vez que se completa el nivel
		{
			//guardar el progreso del nivel
			global.cuentaniveles += 1;
			global.nivel_egipto[24] = true;
			ini_open(global.nombre);
			ini_write_real("Nivel","completados",global.cuentaniveles);
			ini_write_real("Nivel","egipto_1_24", global.nivel_egipto[24]);
			ini_close();
			instance_create_layer(global.xz, global.yz, "hud", recom_monedas);
		}
		else	//si el nivel ya habia sido completado
		{
			instance_create_layer(global.xz, global.yz, "hud", recom_monedas);
		}
	}
	else	//los trucos estan activos
	{
		instance_create_layer(global.xz, global.yz, "hud", recom_monedas);
	}
	if instance_exists(semillero_debug) {semillero_debug.disp_especial = false;}	//desactivar la recarga de las semillas
	instance_destroy(menu_boton_pausar);	//destruir el boton de pausa
	recompensa = false;
}
#endregion
scr_nivel_esqueleto();	//cosas que son iguales en casi todos los niveles