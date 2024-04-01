/// @description dibujarse
draw_sprite_ext(spr_npc_sombra,0,x,sombra_y,image_xscale,image_yscale,0,c_white,1);
draw_self();

if mantequilla == true and sprite_index != noone
{
	if skeleton_attachment_get("mantequilla") == ""
	{
		skeleton_attachment_set("mantequilla",spr_efect_mantequilla);
	}
}