/// @description cambiar la prev del menu recompensa
if instance_exists(menu_recom)
{
	menu_recom.fondo = fondo;
	menu_recom.prev = preview;
	menu_recom.cual = cual;
	menu_recom.ajustar = ajustar;
	instance_destroy();
}
else
{
	instance_destroy();
}