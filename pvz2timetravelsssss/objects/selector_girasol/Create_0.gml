/// @description eventos al crearse
image_speed = 0;
image_index = 0;
depth = -4;

sol = 50;	//costo en soles
click = true;	//controla cuando se podra hacerle click
//click2 = true;	//permite hacerle click
mover = false;	//controla cuando se realizara el movimiento y tambien que version del objeto es
madre = 0;		//guarda la id de la semilla que lo crea
obj = semillero_girasol;	//que semilla creara al iniciar el nivel
desbloquear = global.semilla_girasol;	//saber si la planta ya esta desbloqueada
selector = selector_girasol;	//que selector creara
tipo = 3;		//que sprite dibujara

sprite = prev_girasol;	//sprite a mostrar
name = "Girasol";	//nombre a mostrar
fondo = 0;	//fondo a mostrar detras de las plantas
texto = 1;	//descripcion a mostrar

semillas();		//cargar script de ubicacion de semillas