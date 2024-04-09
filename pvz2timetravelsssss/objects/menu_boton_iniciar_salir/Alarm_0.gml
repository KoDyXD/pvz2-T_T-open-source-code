/// @description cambiar al siguiente menu o nivel por primera vez
if global.primeravez = true
{
	if global.nivel_tutorial[1] = false
	{	
		global.destino = nivel_plantilla_0_0;
		global.destino_sit = 5;
		global.nivel_cual = nivel_tutorial_1_1;
	}
	else
	{
		if global.nivel_tutorial[2]	= false
		{
			global.destino = nivel_plantilla_0_0;
			global.destino_sit = 5;
			global.nivel_cual = nivel_tutorial_1_2;
		}
		else
		{
			if global.nivel_tutorial[3] = false
			{
				global.destino = nivel_plantilla_0_0;
				global.destino_sit = 5;
				global.nivel_cual = nivel_tutorial_1_3;
			}
			else
			{
				if global.nivel_tutorial[4] = false
				{
					global.destino = nivel_plantilla_0_0;
					global.destino_sit = 5;
					global.nivel_cual = nivel_tutorial_1_4;
				}
				else
				{
					if global.nivel_tutorial[5] = false
					{
						global.destino = nivel_plantilla_0_0;
						global.destino_sit = 5;
						global.nivel_cual = nivel_tutorial_1_5;
					}
					else
					{
						global.destino_sit = 1;
						global.destino = menu_zona_general;
					}
				}
			}
		}
	}
}
else
{
	audio_group_load(grupo_musica_egipto);
}