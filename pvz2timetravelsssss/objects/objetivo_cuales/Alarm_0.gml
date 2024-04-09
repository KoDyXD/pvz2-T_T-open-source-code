/// @description activar objetivos
/*
var _pos = 0;

for (var i = 0; i < array_length(desafio); ++i) {
	
    var _desafio = desafio[i];
	var _cual = _desafio[0];
	var _objetivo = _desafio[1];
	var _extra = _desafio[2];

    var des = instance_create_depth(0,0,0,_cual);
	des.objetivo = _objetivo;
	if _cual = objetivo_debug or _cual = objetivo_soles or _cual = objetivo_soles_limite or _cual = objetivo_plantas_tener or _cual = objetivo_plantas_limite
	{
		des.pos1 = _pos;
		_pos += 1;
	}
	des.pos = i;
	if _extra != -1 {des.extra = _extra;}
}