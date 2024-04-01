/// @description Insert description here
click = false;
depth = 0;

editor_pasarelas[0] = 0;
editor_pasarelas[1] = 0;
editor_pasarelas[2] = 0;
editor_pasarelas[3] = 0;
editor_pasarelas[4] = 0;
pasarela_alpha[0] = 0;
pasarela_alpha[1] = 0;
pasarela_alpha[2] = 0;
pasarela_alpha[3] = 0;
pasarela_alpha[4] = 0;

for (var i = 0; i < array_length(global.editor_oleada_cual); ++i) {
	if global.editor_oleada_cual[i][0] = -1
	{
		if global.editor_oleada_cual[i][1] = "pasarelas"	//cargar la info necesaria de las pasarelas activas
		{
			if global.editor_oleada_cual[i][2] == 1
			{
				editor_pasarelas[0] = global.editor_oleada_cual[i][2];
				pasarela_alpha[0] = 1;
			}
			if global.editor_oleada_cual[i][3] == 1
			{
				editor_pasarelas[1] = global.editor_oleada_cual[i][3];
				pasarela_alpha[1] = 1;
			}
			if global.editor_oleada_cual[i][4] == 1
			{
				editor_pasarelas[2] = global.editor_oleada_cual[i][4];
				pasarela_alpha[2] = 1;
			}
			if global.editor_oleada_cual[i][5] == 1
			{
				editor_pasarelas[3] = global.editor_oleada_cual[i][5];
				pasarela_alpha[3] = 1;
			}
			if global.editor_oleada_cual[i][6] == 1
			{
				editor_pasarelas[4] = global.editor_oleada_cual[i][6];
				pasarela_alpha[4] = 1;
			}
			break;
		}
	}
}

/*
[-1,"pasarelas",1,1,1,1,1],