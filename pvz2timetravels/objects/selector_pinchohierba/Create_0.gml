/// @description eventos al crearse
image_speed = 0;
image_index = 21;
depth = -4;

sol = 100;	//costo en soles
click = true;	//controla cuando se podra hacerle click
mover = false;	//controla cuando se realizara el movimiento y tambien que version del objeto es
madre = 0;		//guarda la id de la semilla que lo crea
obj = semillero_pinchohierba;	//que semilla creara al iniciar el nivel
desbloquear = global.semilla_pinchohierba;	//saber si la planta ya esta desbloqueada
selector = selector_pinchohierba;	//que selector creara
tipo = 25;		//que sprite dibujara

sprite = prev_pinchohierba;	//sprite a mostrar
name = "Pinchohierba";	//nombre a mostrar
fondo = 2;	//fondo a mostrar detras de las plantas
texto = 4;	//descripcion a mostrar

semillas();		//cargar script de ubicacion de semillas