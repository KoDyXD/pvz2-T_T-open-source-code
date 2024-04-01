//dibujar las pasarelas
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_outline(x,y,"Tablones",1,1,c_white,c_black);

if click == false
{
	if image_index != 0 {image_index = 0;}
}
else
{
	if image_index != 1 {image_index = 1;}
}