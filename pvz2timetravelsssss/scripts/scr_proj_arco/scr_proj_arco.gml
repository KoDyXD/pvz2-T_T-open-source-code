//crear la curva con ayuda del eje z
function scr_proj_arco(inicio,pico,base,posicion,bias) {
	if posicion <= 0.5
	{
		return(lerp(inicio,pico,scr_proj_bias(bias,posicion*2)));
	}
	else
	{
		var b = 1-bias;
		var p = 2*posicion-1
		return(lerp(pico,base,scr_proj_bias(b,p)));
	}
}