draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text_outline_trans_ext(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-200,y,cual,1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
draw_self();

if habilitar == false and cantidad = "" {cantidad = "1";}
if cual == "oleadas" and habilitar == true
{
	if string_length(cantidad) > 0
	{
		if real(cantidad) > 50 {cantidad = "50";}
	}
}
if cual == "banderas"// and habilitar == true
{
	if string_length(cantidad) > 0 and string_length(otro.cantidad) > 0
	{
		if real(cantidad) > real(otro.cantidad) {cantidad = otro.cantidad;}
	}
}
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(x,y,cantidad);