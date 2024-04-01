/// @description eventos al crearse
image_speed = 0;
image_index = 0;
depth = -4;

sol = 25;	//costo en soles
click = true;	//controla cuando se podra hacerle click
mover = false;	//controla cuando se realizara el movimiento y tambien que version del objeto es
madre = 0;		//guarda la id de la semilla que lo crea
obj = semillero_papapum;	//que semilla creara al iniciar el nivel
desbloquear = global.semilla_papapum;	//saber si la planta ya esta desbloqueada
selector = selector_papapum;	//que selector creara
tipo = 1;		//que sprite dibujara

sprite = prev_papapum;	//sprite a mostrar
name = "Papapum";	//nombre a mostrar
fondo = 0;	//fondo a mostrar detras de las plantas
texto = 3;	//descripcion a mostrar

semillas();		//cargar script de ubicacion de semillas