/// @description eventos al crearse
image_speed = 0;
image_index = 7;
depth = -4;

sol = 100;	//costo en soles
click = true;	//controla cuando se podra hacerle click
mover = false;	//controla cuando se realizara el movimiento y tambien que version del objeto es
madre = 0;		//guarda la id de la semilla que lo crea
obj = semillero_coltapulta;	//que semilla creara al iniciar el nivel
desbloquear = global.semilla_coltapulta;	//saber si la planta ya esta desbloqueada
selector = selector_coltapulta;	//que selector creara
tipo = 9;		//que sprite dibujara

sprite = prev_coltapulta;	//sprite a mostrar
name = "Coltapulta";	//nombre a mostrar
fondo = 1;	//fondo a mostrar detras de las plantas
texto = 4;	//descripcion a mostrar

semillas();		//cargar script de ubicacion de semillas