/// @description eventos al crearse
image_speed = 0;
image_index = 7;
depth = -4;

sol = 150;	//costo en soles
click = true;	//controla cuando se podra hacerle click
mover = false;	//controla cuando se realizara el movimiento y tambien que version del objeto es
madre = 0;		//guarda la id de la semilla que lo crea
obj = semillero_bonkchoy;	//que semilla creara al iniciar el nivel
desbloquear = global.semilla_bonkchoy;	//saber si la planta ya esta desbloqueada
selector = selector_bonkchoy;	//que selector creara
tipo = 20;		//que sprite dibujara

sprite = prev_bonkchoy;	//sprite a mostrar
name = "Bonk Choy";	//nombre a mostrar
fondo = 1;	//fondo a mostrar detras de las plantas
texto = 8;	//descripcion a mostrar

semillas();		//cargar script de ubicacion de semillas