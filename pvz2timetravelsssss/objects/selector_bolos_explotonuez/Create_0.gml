/// @description eventos al crearse
image_speed = 0;
image_index = 7;
depth = -4;

sol = 225;	//costo en soles
click = true;	//controla cuando se podra hacerle click
mover = false;	//controla cuando se realizara el movimiento y tambien que version del objeto es
madre = 0;		//guarda la id de la semilla que lo crea
obj = semillero_bolos_explotonuez;	//que semilla creara al iniciar el nivel
desbloquear = global.semilla_bolos_explotonuez;	//saber si la planta ya esta desbloqueada
selector = selector_bolos_explotonuez;	//que selector creara
tipo = 13;		//que sprite dibujara

sprite = prev_bolos_explotonuez;	//sprite a mostrar
name = "Explotonuez";	//nombre a mostrar
fondo = 1;	//fondo a mostrar detras de las plantas
texto = 10;	//descripcion a mostrar

semillas();		//cargar script de ubicacion de semillas