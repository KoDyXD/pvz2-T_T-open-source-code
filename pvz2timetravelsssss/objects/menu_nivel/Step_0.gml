/// @description Inserte aquí la descripción
if cambiar = true
{
	if nivel_id_new = false
	{
		if nivel_id_last = true
		{
			cambiar = false;
			skeleton_skin_set("verde");
			if tipo = "mg" {skeleton_animation_set("special1 enc");}
			if tipo = "ub" {skeleton_animation_set("special2 enc"); skeleton_skin_set("rojo1");}
			image_index = irandom_range(0,15);
			seleccionar = true;
		}
		else
		{
			cambiar = false;
			skeleton_skin_set("blanco");
			if tipo = "mg" {skeleton_animation_set("special1 apag");}
			if tipo = "ub" {skeleton_animation_set("special2 apag");}
		}
	}
	else
	{
		cambiar = false;
		skeleton_skin_set("azul");
		if tipo = "mg" {skeleton_animation_set("special1 apag");}
		if tipo = "ub" {skeleton_animation_set("special2 apag"); skeleton_skin_set("rojo2");}
		image_index = irandom_range(0,15);
		seleccionar = true;
	}
}

if skeleton_skin_get() != "blanco" {if bril = true {brillo = 0.13;}}