/// @description eventos al crearse
image_speed = 0;
image_index = 7;
depth = -4;

sol = 200;	//costo en soles
click = true;	//controla cuando se podra hacerle click
mover = false;	//controla cuando se realizara el movimiento y tambien que version del objeto es
madre = 0;		//guarda la id de la semilla que lo crea
obj = semillero_carnivora;	//que semilla creara al iniciar el nivel
desbloquear = global.semilla_carnivora;	//saber si la planta ya esta desbloqueada
selector = selector_carnivora;	//que selector creara
tipo = 15;		//que sprite dibujara

sprite = prev_carnivora;	//sprite a mostrar
name = "Planta Carnívora";	//nombre a mostrar
fondo = 1;	//fondo a mostrar detras de las plantas
texto = 12;	//descripcion a mostrar

semillas();		//cargar script de ubicacion de semillas