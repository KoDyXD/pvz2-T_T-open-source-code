/// @description comprobaciones
#region//crear recompensa
if recompensa = true and not instance_exists(zombi_tipo_general)
{
	global.nivel_cual = noone;	//siguiente nivel
	instance_create_layer(global.xz, global.yz, "hud", recom_monedas);
	if instance_exists(semillero_debug) {semillero_debug.disp_especial = false;}	//desactivar la recarga de las semillas
	instance_destroy(menu_boton_pausar);	//destruir el boton de pausa
	recompensa = false;
}
#endregion
scr_nivel_esqueleto();	//cosas que son iguales en casi todos los niveles

if instance_exists(menu_boton_pausar)
{
	if menu_boton_pausar.editor == false {menu_boton_pausar.editor = true;}
}