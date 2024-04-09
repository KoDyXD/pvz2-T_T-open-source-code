/// @description comprobaciones
#region//crear recompensa
if recompensa = true and not instance_exists(zombi_tipo_general)
{
	global.nivel_cual = nivel_egipto_1_18;	//siguiente nivel
	if global.trucos == false	//los trucos estan desactivados
	{
		if global.nivel_egipto[17] = false	//si es la primera vez que se completa el nivel
		{
			//guardar el progreso del nivel
			global.cuentaniveles += 1;
			global.nivel_egipto[17] = true;
			ini_open(global.nombre);
			ini_write_real("Nivel","completados",global.cuentaniveles);
			ini_write_real("Nivel","egipto_1_17", global.nivel_egipto[17]);
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
	spawn_UB_debug.alarm[0] = -1;	//desactivar la cinta transportadora
	if instance_exists(semillero_debug) {semillero_debug.disp_especial = false;}	//desactivar la recarga de las semillas
	instance_destroy(menu_boton_pausar);	//destruir el boton de pausa
	recompensa = false;
}
#endregion
#region crear mas tumbas si se eliminaron todas las tumbas
if instance_number(tumba_egipto) <= 3 and alarm[3] = -1
{
	instance_create_tumbas(2,1,9,5,20,25,tumba_egipto);
	alarm_set(3,1);
}
#endregion
scr_nivel_esqueleto();	//cosas que son iguales en casi todos los niveles