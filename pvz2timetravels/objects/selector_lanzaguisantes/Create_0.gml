/// @description eventos al crearse
image_speed = 0;
image_index = 0;
depth = -4;

sol = 100;	//costo en soles
click = true;	//controla cuando se podra hacerle click
mover = false;	//controla cuando se realizara el movimiento y tambien que version del objeto es
madre = 0;		//guarda la id de la semilla que lo crea
obj = semillero_lanzaguisantes;	//que semilla creara al iniciar el nivel
desbloquear = global.semilla_lanzaguiasntes;	//saber si la planta ya esta desbloqueada
selector = selector_lanzaguisantes;	//que selector creara
tipo = 4;		//que sprite dibujara

sprite = prev_lanzaguisantes;	//sprite a mostrar
name = "Lanzaguisantes";	//nombre a mostrar
fondo = 0;	//fondo a mostrar detras de las plantas
texto = 0;	//descripcion a mostrar

semillas();		//cargar script de ubicacion de semillas