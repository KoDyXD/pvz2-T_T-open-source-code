/// @description partes del cuerpo
if mask_index != spr_vacio
{
	draw_sprite_ext(spr_npc_sombra,0,x,y-15,image_xscale,image_yscale,0,c_white,1);
}

if brillo > 0 {brillo -= 0.007;}
shader_set(shader_brillo);
shader_set_uniform_f(brillo_unif,brillo);
draw_self();
shader_reset();

if mantequilla == true and skeleton_attachment_get("mantequilla") == ""
{
	skeleton_attachment_set("mantequilla",spr_efect_mantequilla);
}
if mantequilla == false and skeleton_attachment_get("mantequilla") != ""
{
	skeleton_attachment_set("mantequilla",noone);
}