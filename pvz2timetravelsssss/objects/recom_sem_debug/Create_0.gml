/// @description weas para que funcione
image_speed = 0;
depth = -1;

//curva de animacion
curvePos = 0;			//que animC usara
curveMove = 0.03;		//velocidad de la curva
click = true;			//controla cuando se podra hacer click
if xstart <= 1735 {curveDireccion = 0;}else{curveDireccion = 2;}	//direccion de la curva
if (xstart < 1500) or (xstart > 2000) {curveMove = 0.02; vel = 100;}else{ vel = 45;}	//velocidad a multiplicar

tipo = 4;		//que sprite creara
preview = prev_lanzaguisantes;	//que preview creara en el menu recompensa
cual = 0;			//mostrar descripcion de la recompensa en su menu
fondo = 0;			//que fondo de patio mostrara en la pantalla recompensa
ajustar = true;		//ajustar la X y Y
alarm_set(0,600);	//alarma para que la recompensa se seleccione automaticamente

if x > camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])	//hacer que la remcompensa este dentro de la pantalla
{
	x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-sprite_width;
}

//recompensa desbloquear
if global.semilla_lanzaguiasntes = false {global.cuentasem += 1;}
global.semilla_lanzaguiasntes = true;
ini_open(global.nombre);
ini_write_real("Semilla", "cuantas", global.cuentasem);
ini_write_real("Semilla", "lanzaguisantes", global.semilla_lanzaguiasntes);
ini_close();

/* IMPORTANTE
Este es un objeto padre por lo que todos sus hijos heredaran sus eventos excepto el create
Si este objeto es eliminado todas las recompensas se danaran