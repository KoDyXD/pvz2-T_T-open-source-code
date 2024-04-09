/// @description Inserte aquí la descripción
instance_destroy();
if global.primeravez2 = false
{
	instance_create_depth(0,0,0,menu_escribir_primeravez);
}
else
{
	menu_boton_creditos.click2 = false;
	menu_boton_iniciar_salir.click2 = false;
	menu_boton_perfil.click2 = false;
	menu_boton_noticias.click2 = false;
}
instance_activate_all();