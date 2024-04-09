/// @description comenzar a dibujar la hud
var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;

if !instance_exists(menu_boton_pausar) {instance_create_depth(_x,_y+285,-10,menu_boton_nivel_continuar);}

var i = instance_create_depth(_x-175,_y+70,depth-1,objetivo_cuales_seguir);
i.direccion = "izquierda"
i.image_xscale = -1;
var i = instance_create_depth(_x+175,_y+70,depth-1,objetivo_cuales_seguir);
i.direccion = "derecha"

dibujar = true;