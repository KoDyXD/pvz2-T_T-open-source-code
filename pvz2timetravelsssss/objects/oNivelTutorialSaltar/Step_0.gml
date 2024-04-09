/// @description detectar que boton se presiona
if instance_exists(obj_transicion) and intensidad < 0.75 {intensidad += 0.012;}

if !instance_exists(obj_transicion)
{
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	if collision_rectangle(_x-250-85,_y+396-49,_x-250+85,_y+396+49,obj_click,0,1) and mouse_check_button_pressed(mb_left)	//se salta el tutorial
	{
		boton_1 = 1;
		audio_play_sound(sound_menu_boton,5,0);
		
		instance_create_depth(0,0,-10, obj_transicion);
		global.destino_sit = 5;
		global.nivel_cual = nivel_tutorial_1_5;
		global.destino = nivel_plantilla_0_0;
		
		//obtener las recompensas del tutorial
		global.semilla_girasol = true;
		global.semilla_nuez = true;
		global.semilla_papapum = true;
		global.extra_pala = true;

		global.cuentaniveles += 4;
		global.cuentasem += 3;
		global.nivel_tutorial[1] = true;
		global.nivel_tutorial[2] = true;
		global.nivel_tutorial[3] = true;
		global.nivel_tutorial[4] = true;

		ini_open(global.nombre);
		ini_write_real("Semilla", "girasol", global.semilla_girasol);
		ini_write_real("Semilla", "nuez", global.semilla_nuez);
		ini_write_real("Semilla", "papapum", global.semilla_papapum);
		ini_write_real("Extra", "pala", global.extra_pala);

		ini_write_real("Nivel","tut_1_1", global.nivel_tutorial[1]);
		ini_write_real("Nivel","tut_1_2", global.nivel_tutorial[2]);
		ini_write_real("Nivel","tut_1_3", global.nivel_tutorial[3]);
		ini_write_real("Nivel","tut_1_4", global.nivel_tutorial[4]);
		
		ini_write_real("Nivel","completados",global.cuentaniveles);
		ini_write_real("Semilla", "cuantas", global.cuentasem);
		ini_close();
	}
	if collision_rectangle(_x+250-85,_y+396-49,_x+250+85,_y+396+49,obj_click,0,1) and mouse_check_button_pressed(mb_left)	//se jugara el tutorial
	{
		camara.funcionar = true;
		
		audio_play_sound(sound_menu_boton,5,0);
		
		instance_activate_all();
		instance_destroy();
	}
}