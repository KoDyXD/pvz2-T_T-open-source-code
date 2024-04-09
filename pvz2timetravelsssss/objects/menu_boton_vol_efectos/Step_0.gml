/// @description Inserte aquí la descripción
if x < xx {x = xx;}
if x > xstart {x = xstart;}

global.vol_efectos = (abs((x-xx)/675))*(abs((x-xx)/675));
image_angle = (x+xx)/1.5;

audio_group_set_gain(efectos,global.vol_efectos,0);