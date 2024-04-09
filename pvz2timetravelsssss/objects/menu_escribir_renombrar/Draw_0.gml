/// @description Inserte aquí la descripción
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color($003E48);

if os_type = os_android
{
	if keyboard_virtual_status() = false
	{
		yy = 668;
		draw_text_transformed(room_width/2,yy,combinacion,1.15,1.15,0);	//nombre
	}
	else
	{
		yy = 331.75;
		draw_text_transformed(room_width/2,yy,combinacion,1.15,1.15,0);	//nombre
	}
}
else
{
	yy = 668;
	draw_text_transformed(room_width/2,yy,combinacion,1.15,1.15,0);	//nombre
}