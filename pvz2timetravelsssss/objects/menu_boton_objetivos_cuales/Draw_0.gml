/// @description Inserte aquí la descripción
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

draw_self();

if objetivo_cuales.dibujar = true
{
	draw_text_outline(x,y,"regresar",1,1,c_white,c_black);
}
else
{
	draw_text_outline(x,y,"objetivos",1,1,c_white,c_black);
}