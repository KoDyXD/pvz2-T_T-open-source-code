//deco extra del nivel
function scr_mod_nivel_extras(patio,bolera){
	//cesped del patio del tutorial
	var _i = instance_create_layer(0,0,"deco_extra",pat_decos_extras);
	_i.patio = patio;
	_i.bolera = bolera;
}