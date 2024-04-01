//crear las pasarelas de mares piratas
function scr_mod_nivel_pasarela(pas1,pas2,pas3,pas4,pas5){
	
	instance_destroy(casillas_pasarelas);
	instance_destroy(casillas_no_pasarela);
	/*
	var i = instance_create_layer(0,0,"casillas",casillas_pasarelas);
	i.pas1 = pas1;
	i.pas2 = pas2;
	i.pas3 = pas3;
	i.pas4 = pas4;
	i.pas5 = pas5;*/
	

	if pas1 = 0
	{
		var i = instance_create_layer(1827,186*3+52,"casillas",casillas_no_pasarela);
		i.image_xscale = 3.9;
		i. pos = 4;
	}
	else
	{
		var i = instance_create_layer(1827,186*3,"casillas",casillas_pasarelas);
		i.pos = 4;
	}
	if pas2 = 0
	{
		var i = instance_create_layer(1827,186*4+52,"casillas",casillas_no_pasarela);
		i.image_xscale = 3.9;
		i. pos = 5;
	}
	else
	{
		var i = instance_create_layer(1827,186*3,"casillas",casillas_pasarelas);
		i.pos = 5;
	}
	if pas3 = 0
	{
		var i = instance_create_layer(1827,186*5+52,"casillas",casillas_no_pasarela);
		i.image_xscale = 3.9;
		i. pos = 6;
	}
	else
	{
		var i = instance_create_layer(1827,186*3,"casillas",casillas_pasarelas);
		i.pos = 6;
	}
	if pas4 = 0
	{
		var i = instance_create_layer(1827,186*6+52,"casillas",casillas_no_pasarela);
		i.image_xscale = 3.9;
		i. pos = 7;
	}
	else
	{
		var i = instance_create_layer(1827,186*3,"casillas",casillas_pasarelas);
		i.pos = 7;
	}
	if pas5 = 0
	{
		var i = instance_create_layer(1827,186*7+52,"casillas",casillas_no_pasarela);
		i.image_xscale = 3.9;
		i. pos = 8;
	}
	else
	{
		var i = instance_create_layer(1827,186*3,"casillas",casillas_pasarelas);
		i.pos = 8;
	}
}

/*valores usables aqui
-Si se pone 0 no se colocara una pasarela y el camino sera inaccesible
-Si se pone 1 se creara una pasarela y el camino sera totalmente accesible
-Si se pone cualquier otro valor no se creara ninguna pasarela y el camino sera accesible