/// @description Inserte aquí la descripción
image_speed = 0;

parte = false;
fondo_mundo = false;
mundo = spr_egipto_fondo;

if room_height > camera_get_view_height(view_camera[0])
{
    smoothview_init(0,0.33,0.08,2);
}
else
{
    smoothview_init(1,0.33,0.08,2);
}