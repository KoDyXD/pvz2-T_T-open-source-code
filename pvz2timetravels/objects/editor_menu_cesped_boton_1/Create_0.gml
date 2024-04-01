/// @description Insert description here
click = false;
depth = 0;

editor_cesped = 1;
cesped_alpha[0] = 1;
cesped_alpha[1] = 0;
cesped_alpha[2] = 0;

for (var i = 0; i < array_length(global.editor_oleada_cual); ++i) {
	if global.editor_oleada_cual[i][0] = -1
	{
		if global.editor_oleada_cual[i][1] = "cesped"	//cargar la info necesaria del cesped activo
		{
			switch(global.editor_oleada_cual[i][2])
			{
				case 1:
					editor_cesped = 1;
					cesped_alpha[0] = 1;
					cesped_alpha[1] = 0;
					cesped_alpha[2] = 0;
				break;
				case 2:
					editor_cesped = 2;
					cesped_alpha[0] = 0;
					cesped_alpha[1] = 1;
					cesped_alpha[2] = 0;
				break;
				case 3:
					editor_cesped = 3;
					cesped_alpha[0] = 0;
					cesped_alpha[1] = 0;
					cesped_alpha[2] = 1;
				break;
			}
			break;
		}
	}
}

/*
[-1,"cesped",0],