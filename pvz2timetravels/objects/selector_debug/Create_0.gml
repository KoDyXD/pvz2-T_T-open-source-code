/// @description eventos al crearse
image_speed = 0;
image_index = 0;
depth = -4;

y_pos_selector = 0;	//posicion respecto a la wea que permite el desplazamiento

sol = 0;	//costo en soles
click = true;	//controla cuando se podra hacerle click
mover = false;	//controla cuando se realizara el movimiento y tambien que version del objeto es
madre = 0;		//guarda la id de la semilla que lo crea
obj = semillero_lanzaguisantes;	//que semilla creara al iniciar el nivel
desbloquear = global.semilla_lanzaguiasntes;	//saber si la planta ya esta desbloqueada
usar = true;	//se usa para bolquear la semilla si ya se ha desbloqueado
selector = selector_lanzaguisantes;	//que selector creara
tipo = 4;		//que sprite dibujara

sprite = prev_lanzaguisantes;	//sprite a mostrar
name = "DEBUG";	//nombre a mostrar
fondo = 0;	//fondo a mostrar detras de las plantas
texto = 0;	//descripcion a mostrar

semillas();		//cargar script de ubicacion de semillas

/* IMPORTANTE

Este objeto es un padre por lo que si este objeto es eliminado todas los objetos hijos se danaran.
Existen dos versiones de este mismo objeto que se decide en el mismo objeto:
1. La version madre es la principal y se crea junto al menu de seleccion y se define cuando la variable mover = false.
2. La version hijo es la secundaria y se crea al hacerle click a la version madre y se define cuando la variable mover = true.