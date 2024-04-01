/// @description crear mundos
var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,room_height/2,"islas",menu_mundo);
i.zona = menu_zona_tutorial;
i.nombre = "Tutorial";
i.nivel_id_last = true;
i.pos = 0;

var i = instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2)+1400,room_height/2,"islas",menu_mundo);
i.zona = menu_zona_egipto;
i.nombre = "Antiguo Egipto";
i.nivel_id_last = global.nivel_tutorial[5];
i.pos = 1;
i.image_index = 1;

var i = instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2)+1400*2,room_height/2,"islas",menu_mundo);
i.zona = menu_zona_pirata;
i.nombre = "Mares piratas";
i.nivel_id_last = global.nivel_egipto[10];
i.pos = 2;
i.image_index = 2;

var i = instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2)+1400*3,room_height/2,"islas",menu_mundo);
i.zona = menu_zona_pirata;	//cambiar al valor correcto cuando sea necesario
i.nombre = "Salvaje Oeste";
i.nivel_id_last = global.nivel_pirata[25];	//cambiar al valor correcto cuando sea necesario
i.pos = 3;
i.image_index = 3;

room_width = (camera_get_view_width(view_camera[0])+1400*3);