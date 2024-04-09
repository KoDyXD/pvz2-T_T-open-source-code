/// @description Inserte aquí la descripción
depth = -1;
image_speed = 0;

surface = -1;
click = false;
click2 = false;

texto[0] = @"
¡Bienvenido viajero del tiempo!

La actualización 0.2 incluye:

-25 niveles disponibles para el Antiguo Egipto.

-11 nuevas plantas adquiribles a lo largo del Antiguo Egipto.

-Incluido el almanaque de plantas y zombis.

-Se rehicieron los niveles del tutorial para hacerlos más rápidos de completar.

-Ahora puedes tener hasta 4 perfiles.

-Nuevas animaciones para las plantas y zombis del tutorial.
";

texto[1] = @"
¡Bienvenido de nuevo viajero del tiempo!

La actualización 0.2.3 incluye:

GAMEPLAY

-El valor de los soles ha aumentado de 25 a 50.

-Ahora es posible seleccionar semillas con la pala activada y viceversa.

-Se ha agregado la posibilidad de saltarse los primeros 4 niveles del tutorial.

-Se ajustó la velocidad de ataque del Lanzaguisantes, Hielaguisantes, Repetidora y  Coltapulta para que sean idénticos.

-Se han eliminado los puntos ciegos de Planta Carnívora y Bonk Choy.

-Comepiedras ya no puede ser comida por los zombis.

-El paquete de semillas Nueces de bolera ha sido reemplazado por la de Nuez de bolera.

-La Nuez de bolera ahora es capaz de golpear al zombi explorador por detrás.

-La Explotonuez ahora es capaz de explotar si toca la antorcha encendida del zombi explorador.

-Se ha mejorado el comportamiento de la Momia Ra.

-El zombi explorador ahora es capaz de comer plantas con la antorcha encendida.

-Varios niveles del Antiguo Egipto se han modificado, simplificado y eliminado.


GRAFICOS Y SONIDOS

-Se han mejorado y cambiado las texturas de menús y botones.

-Se han mejorado los deslizadores de sonido y se les ha agregado efectos para indicar el volumen actual.

-Se han mejorado las animaciones de varias plantas y zombis.

-Se han agregado los temas de los créditos de pvz1 y pvz2 en la pantalla de créditos.


BUGS SOLUCIONADOS

-Se ha optimizado y mejorado el código de todas las plantas y zombis para evitar bugs al interactuar con plantas y zombis (Morí varias veces intentando arreglar ese desmadre asi que será mejor que lo aprecien).

-Se ha corregido un bug que provocaba una carga excesiva en la memoria provocando que se ralentizara el juego.

-Se ha corregido un bug que provocaba que los soles rojos se amontonaran en la Momia Ra.

-Se ha corregido un bug que hacía posible plantar plantas en casillas bloqueadas.

-Se ha corregido un bug que provocaba que las semillas del selector se movieran más arriba de lo normal al pausar el juego.

-Bugs menores solucionados.
";
texto[2] = @"
Welcome back stranger!

No, this isn't the most recent version of time travel's source code :3";
fecha[0] = "28/03/2022";
fecha[1] = "28/01/2023";
fecha[2] = "01/04/2024";

cual = array_length(texto)-1;

instance_create_depth(0,340,0,menu_boton_noticias_mover);
menu_boton_noticias_mover.limite_y1 = (string_height_ext(texto[2],40,620)+string_height_ext(fecha[2],40,620))-730;