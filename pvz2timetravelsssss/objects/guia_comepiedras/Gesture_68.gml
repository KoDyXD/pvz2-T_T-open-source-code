/// @description plantar
var mouse_grid_x = mouse_x div 166;
var mouse_grid_y = mouse_y div 186;
with(obj_click)
{
	if x > 6*166 and y > 3*186 and x < 15*166 and !place_meeting(x,y,semillero_debug) and !place_meeting(x,y,pala_base) and !place_meeting(x,y,menu_boton_pausar)
	{
		var mouse_grid_x = mouse_x div 166;
		var mouse_grid_y = mouse_y div 186;
		
		if mouse_grid_y < 3 {mouse_grid_y = 3;}
		if mouse_grid_y > 7 {mouse_grid_y = 7;}
		if mouse_grid_x < 6 {mouse_grid_x = 6;}
		if mouse_grid_x > 14 {mouse_grid_x = 14;}
		
		if !collision_rectangle(mouse_grid_x*166,mouse_grid_y*186,mouse_grid_x*166+166,mouse_grid_y*186+186,oPlantaGeneral,0,1) and collision_rectangle(mouse_grid_x*166,mouse_grid_y*186,mouse_grid_x*166+166,mouse_grid_y*186+186,tumba_egipto,0,1) and !collision_rectangle(mouse_grid_x*166,mouse_grid_y*186,mouse_grid_x*166+166,mouse_grid_y*186+186,casillas_ocupada,0,1) and !collision_rectangle(mouse_grid_x*166,mouse_grid_y*186,mouse_grid_x*166+166,mouse_grid_y*186+186,casillas_no_plantable,0,1)
		{
			with(other)
			{
				inst2 = instance_create_layer(mouse_grid_x*166+68,mouse_grid_y*186+143,"npcs",planta);
				instance_create_layer((mouse_grid_x*166)+68,(mouse_grid_y*186)+143,"npcs",efect_tierra_plantar);
				audio_play_sound(sound_pala_desplantar,1,0);
				global.soles -= sol;
				if instance_exists(objetivo_soles_limite) {objetivo_soles_limite.soles -= sol;}	//menorar la cantidad de soles limitados
				with(inst) {tap = true; inst = noone;}
				instance_destroy();
			}
		}
	}
}