/// @description guardar la room para regresar a ella despues
if instance_exists(nivel_debug_xd)
{
	if room = nivel_plantilla_0_0
	{
		instance_destroy(nivel_debug_xd);
		instance_create_layer(0,0,"hud",global.nivel_cual);
	}
	if room = nivel_plantilla_0_1
	{
		instance_destroy(nivel_debug_xd);
	}
}

if global.nivel_tutorial[5] = true
{
	if instance_exists(menu_nivel) or instance_exists(menu_mundo) or instance_exists(menu_debug)
	{
		zona = room
	}
}
else
{
	zona = menu_zona_tutorial;
}

if instance_exists(nivel_debug_xd) or instance_exists(objetivo_cuales)
{
	audio_group_load(grupo_ambiente_all);
	
	//texturas varias
	texture_prefetch("menu_almanaque");
	texture_prefetch("menu_recompensa");
	texture_prefetch("menu_general");
	texture_prefetch("menu_botones");
	texture_prefetch("semilleros");
	texture_prefetch("semilleros_plantas");
	texture_prefetch("fuentes");
	texture_prefetch("extras");
}

if instance_exists(nivel_debug_xd) or instance_exists(objetivo_cuales) or instance_exists(mund_espiral2) or instance_exists(oNivelTutorialSaltar)
{
	alarm_set(8,1);
}

global.destino = noone;
global.destino_sit = 0;