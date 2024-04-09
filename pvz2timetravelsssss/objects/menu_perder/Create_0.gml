/// @description Inserte aquí la descripción
image_xscale = 0.8;
image_yscale = 0.8;
image_alpha = 0;
depth = -9;
alpha = 0;
alphacontrol = false;
alarm_set(0,240);
alarm_set(1,60);
cuenta = 0;
frase = "Zomvis...\nKomer...\nZerevros...";

instance_destroy(nivel_horda);

x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/1.35;