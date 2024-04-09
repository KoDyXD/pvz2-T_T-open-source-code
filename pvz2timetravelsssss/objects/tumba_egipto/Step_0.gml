/// @description cambiar sprite y destruir si no tiene vida
if skeleton_animation_get() = "tranquilo" and alarm[1] = -1
{
	if hp > 560 {skeleton_skin_set("1");}
	if hp < 560 and hp >= 420 {skeleton_skin_set("2");}
	if hp < 420 and hp >= 280 {skeleton_skin_set("3");}
	if hp < 280 and hp >= 140 {skeleton_skin_set("4");}
	if hp < 140 {skeleton_skin_set("5");}
}
if hp <= 0 and alarm[0] = -1 {var i = instance_create_layer(x,y,"npcs",efect_tumba_egipto_morir); i.depth = depth; instance_destroy();}