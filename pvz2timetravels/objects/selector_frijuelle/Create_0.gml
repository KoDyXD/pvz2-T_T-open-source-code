/// @description eventos al crearse
image_speed = 0;
image_index = 21;
depth = -4;

sol = 75;	//costo en soles
click = true;	//controla cuando se podra hacerle click
mover = false;	//controla cuando se realizara el movimiento y tambien que version del objeto es
madre = 0;		//guarda la id de la semilla que lo crea
obj = semillero_frijuelle;	//que semilla creara al iniciar el nivel
desbloquear = global.semilla_frijuelle;	//saber si la planta ya esta desbloqueada
selector = selector_frijuelle;	//que selector creara
tipo = 24;		//que sprite dibujara

sprite = prev_frijuelle;	//sprite a mostrar
name = "Frijuelle";	//nombre a mostrar
fondo = 2;	//fondo a mostrar detras de las plantas
texto = 4;	//descripcion a mostrar

semillas();		//cargar script de ubicacion de semillas