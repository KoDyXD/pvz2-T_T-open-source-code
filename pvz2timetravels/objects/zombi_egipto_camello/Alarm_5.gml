/// @description crear camellos extras
if generar = true
{
	var _camel_mitad = noone;
	var _camel_final = noone;
	if !instance_exists(camara) {skeleton_animation_set("caminar/1");}else{skeleton_animation_set("tranquilo/1");}
	caliza = "caminar/1";
	for (var i = 1; i < 3; ++i) {
		var _camel = instance_create_layer(x+150*i,y,"npcs",zombi_egipto_camello);
	    camellos[i] = _camel;
		_camel.generar = false;
		switch(i)
		{
			case 1:
				with(_camel)
				{
					skeleton_skin_set("cuerpo/1");
					if !instance_exists(camara) {skeleton_animation_set("caminar/2");}else{skeleton_animation_set("tranquilo/2");}
					caliza = "caminar/2";
					curvePos = 0.2;
					idk = 1;
				}
			break;
			case 2:
				with(_camel)
				{
					skeleton_skin_set("cola/1");
					if !instance_exists(camara) {skeleton_animation_set("caminar/3");}else{skeleton_animation_set("tranquilo/3");}
					caliza = "caminar/3";
					curvePos = 0.4;
					idk = 2;
				}
			break;
		}
		if i = 1 {_camel_mitad = _camel;}
		if i = 2 {_camel_final = _camel;}
		if i = 2
		{
			_camel_mitad.camellos = camellos;
			_camel_final.camellos = camellos;
		}
	}
}