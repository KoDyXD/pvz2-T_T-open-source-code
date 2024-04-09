/// @description esto no es un nivel real y solo sirve en la preview
//var _div = 1.65;
//if os_type = os_android {_div = 1.2;}else{_div = 1.65;}
//var _y = (display_get_height()-camera_get_view_height(view_camera[0])/_div);
var _y = 1300
//_y += camera_get_view_height(view_camera[0]);
//if _y >= room_height {_y = room_height;}
var _x = _y/display_get_height();
_x = display_get_width()*_x;
camera_set_view_size(view_camera[0],_x,_y);

instance_destroy(obj_transicion);
instance_create_depth(1472.5,1116,0,camara3);

//nivel finalizado
global.finalizado = false;

//recompensa del nivel
global.recompensa = false;
depth = -49;

intensidad = 1;
intensidad2 = 0;
tamano = 2.5;
sonido = true;
alarm_set(0,200);
alarm_set(1,700);
instance_deactivate_all(true);

music = instance_create_depth(0,0,0,musica_egipto_special_2);

//primera vez
global.primeravez = true;
ini_open(global.nombre);
ini_write_real("primera", "vez", global.primeravez);
ini_close();

instance_create_planta(7,1,planta_bonkchoy,false);
instance_create_planta(6,2,planta_bonkchoy,false);
instance_create_planta(7,4,planta_bonkchoy,false);