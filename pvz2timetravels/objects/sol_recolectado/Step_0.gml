/// @description Insert description here
if image_xscale > 0
{
	image_xscale -= 0.1;
	image_yscale = image_xscale;
	image_alpha = image_xscale;
}
if image_xscale <= 0 {instance_destroy();}