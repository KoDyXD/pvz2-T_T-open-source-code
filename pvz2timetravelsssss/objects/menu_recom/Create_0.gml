/// @description tipo de recompensa
depth = 1;
nombre = 0;
cual = 0;
ajustar = false;
plantas();	///cargar script con los nombres y descipciones de las plantas

audio_stop_sound(sound_semillero_cinta);;
audio_stop_sound(music_menu_recom);
duracion = audio_play_sound(music_menu_recom,1000,0);	///musica del menu
ext = true;
prev = noone;
norep = false;
fondo = 0;

var _x = room_height/display_get_height();
_x = display_get_width()*_x;

camera_set_view_size(view_camera[0],_x,room_height);

instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2)-262.5,(camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2)+398.5,"Instances",menu_recom_regresar);
instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2)+262.5,(camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2)+398.5,"Instances",menu_recom_siguiente);