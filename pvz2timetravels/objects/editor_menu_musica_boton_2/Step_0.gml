/// @description Insert description here
if place_meeting(x,y,obj_click) and !place_meeting(x,y,editor_menu_musica_boton_2) and !instance_exists(editor_menu_musica_boton_3)
{
	agrandar = true;
}
else if !place_meeting(x,y,obj_click) and click == false
{
	agrandar = false;
}

if agrandar == true
{
	if image_xscale < 1.5
	{
		depth = -3;
		image_yscale += 0.1;
		image_xscale += 0.1;
	}
}
else if image_xscale > 1 and click == false
{
	depth = -2;
	image_yscale -= 0.1;
	image_xscale -= 0.1;
}