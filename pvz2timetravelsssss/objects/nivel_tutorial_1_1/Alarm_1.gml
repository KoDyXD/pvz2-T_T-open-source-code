/// @description crear objetos al finalizar la intro del nivel
//podadoras
instance_create_podar(3);

///controlar zombis de muestra
global.quietos = false;

//crear semillas
if global.cuentasem < 6
{
	var _x = camera_get_view_x(view_camera[0])+150;
	var _y = camera_get_view_y(view_camera[0])+200;
	if global.semilla_lanzaguiasntes = true {var _inst = instance_create_layer(_x,_y+151*0,"hud",semillero_lanzaguisantes); _inst.alarm[0] = 1;}
	if global.semilla_girasol = true {var _inst = instance_create_layer(_x,_y+151*1,"hud",semillero_girasol);}
	if global.semilla_nuez = true {var _inst = instance_create_layer(_x,_y+151*2,"hud",semillero_nuez);}
	if global.semilla_papapum = true {var _inst = instance_create_layer(_x,_y+151*3,"hud",semillero_papapum);}
	if global.semilla_coltapulta = true {var _inst = instance_create_layer(_x,_y+151*4,"hud",semillero_coltapulta);}
	if global.semilla_boomerang = true {var _inst = instance_create_layer(_x,_y+151*5,"hud",semillero_boomerang);}
	if global.semilla_hielaguisantes = true {var _inst = instance_create_layer(_x,_y+151*6,"hud",semillero_hielaguisantes);}
}

//pala y botones
instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))-100,camera_get_view_y(view_camera[0])+100,"hud",menu_boton_pausar);
if global.extra_pala = true {instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))-289,camera_get_view_y(view_camera[0])+100,"hud",pala_base);}

//destruir menu de seleccion
if instance_exists(menu_selector){instance_destroy(menu_selector);}