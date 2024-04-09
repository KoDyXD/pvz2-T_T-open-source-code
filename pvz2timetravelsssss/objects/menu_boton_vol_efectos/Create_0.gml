/// @description weas para que funcione
image_speed = 0;
depth = -8;

xx = xstart-675;	//tamano de la barra
click = false;

//reubicar el boton
ini_open("general.ini");
x -= string(ini_read_real("volumen","efectos_posY", global.vol_efectos_posY));
ini_close();