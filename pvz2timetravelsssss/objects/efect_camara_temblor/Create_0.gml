/// @description Insert description here
if instance_number(efect_camara_temblor) > 1 {instance_destroy();}
yy = camera_get_view_y(view_camera[0]);
xx = camera_get_view_x(view_camera[0]);
velocidad_x = 1;
velocidad_y = -1;

alarm_set(0,7);
alarm_set(1,25);