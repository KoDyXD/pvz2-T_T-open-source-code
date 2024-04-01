/// @description weas para que funcione
surface = -1;

depth = -1;

generar = true;		//controla la generacion de las semillas en el for loop	

//posiciones de las semillas del menu
xx = 0;				//controla el eje x de creacion de las semillas en el for loop
yy = y-85;			//controla el eje y de creacion de las semillas en el for loop
global.posi = 0;	//controla la posicion de las semillas hijo
semillas();			//cargar script de las semillas que creara

//botones
instance_create_depth(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,0,0,menu_selector_sems_mover);	//permitir el desplazamiento de las semillas
instance_create_depth(x+580+143,(camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]))+camera_get_view_height(view_camera[0]),0,menu_boton_selector_ya);	//boton de iniciar la partida
alarm_set(0,1);

//texto y sprite de muestra
global.sprite = instance_create_depth(x-330+68,y-370+143,-1,prev_lanzaguisantes);	//sprite a mostrar
global.name = "Lanzaguisantes";	//nombre a mostrar
global.fondo = 0;	//fondo detras de la planta
global.texto = 0;

skeleton_animation_set("tranquilo");
skeleton_skin_set("amarillo");