/// @description eventos al crearse
image_speed = 0;
image_index = 7;
depth = -4;

sol = 200;	//costo en soles
click = true;	//controla cuando se podra hacerle click
mover = false;	//controla cuando se realizara el movimiento y tambien que version del objeto es
madre = 0;		//guarda la id de la semilla que lo crea
obj = semillero_repetidora;	//que semilla creara al iniciar el nivel
desbloquear = global.semilla_repetidora;	//saber si la planta ya esta desbloqueada
selector = selector_repetidora;	//que selector creara
tipo = 16;		//que sprite dibujara

sprite = prev_repetidora;	//sprite a mostrar
name = "Repetidora";	//nombre a mostrar
fondo = 1;	//fondo a mostrar detras de las plantas
texto = 9;	//descripcion a mostrar

semillas();		//cargar script de ubicacion de semillas