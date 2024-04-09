/// @description weas para que funcione
image_speed = 0;
depth = -1;

//curva de animacion
curvePos = 0;			//que animC usara
curveMove = 0.03;		//velocidad de la curva
click = true;			//controla cuando se podra hacer click
if xstart <= 1735 {curveDireccion = 0;}else{curveDireccion = 2;}	//direccion de la curva
if (xstart < 1500) or (xstart > 2000) {curveMove = 0.02; vel = 100;}else{ vel = 45;}	//velocidad a multiplicar

preview = prev_almanaque;	//que preview creara en el menu recompensa
cual = 13;			//mostrar descripcion de la recompensa en su menu
fondo = 13;			//que fondo de patio mostrara en la pantalla recompensa
ajustar = false;		//ajustar la X y Y
alarm_set(0,600);	//alarma para que la recompensa se seleccione automaticamente

if x > camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])	//hacer que la remcompensa este dentro de la pantalla
{
	x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-sprite_width;
}

//recompensa desbloquear
global.extra_almanaque = true;
ini_open(global.nombre);
ini_write_real("Extra", "almanaque", global.extra_almanaque);
ini_close();