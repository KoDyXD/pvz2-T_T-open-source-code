/// @description Inserte aquí la descripción
combinacion = "USUARIO DAVE";
mayus = false;
tecla = 7;
var i = instance_create_depth(room_width/2,855,0,menu_boton_perfil_primeravez_aceptar);
i.inst = id;
depth = -3;
yy= 668;

menu_boton_perfil.click2 = true;
menu_boton_iniciar_salir.click2 = true;
menu_boton_noticias.click2 = true;
menu_boton_creditos.click2 = true;
if instance_exists(menu_boton_graficos_pantalla_completa) {menu_boton_graficos_pantalla_completa.click2 = true;}