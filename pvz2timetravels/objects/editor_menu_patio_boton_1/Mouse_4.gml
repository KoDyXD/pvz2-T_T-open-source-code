/// @description Insert description here
if global.click = false
{
	if click = false
	{
		audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
		click = true;
		global.click = true;
		#region
		//patios
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-525,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2-266,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_tutorial";
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-175,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2-266,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_egipto";
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2+175,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2-266,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_pirata";
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2+525,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2-266,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_vaquero";
		
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-525,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_cuevas";
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-175,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_medieval";
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2+175,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_selva";
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2+525,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_jurasico";
		
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-525,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+266,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_playa";
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-175,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+266,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_futuro";
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2+175,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+266,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_neon";
		var i = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2+525,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+266,"hud",editor_menu_patio_boton_2);
		i.editor_patio = "spr_patio_roma";
		#endregion
	}
}
else if click = true
{
	audio_play_sound(sound_menu_boton_perfil_cancelar,5,0);
	click = false;
	global.click = false;
	instance_destroy(editor_menu_patio_boton_2);
}