/// @description Insert description here
if x < xstart+332
{
	x += 6;
}
if x <= xstart+166 and image_xscale < 1
{
	image_xscale += 0.05;
	image_alpha += 0.05;
}


if x >= xstart+332
{
	image_alpha -= 0.05;
	image_xscale -= 0.025;
	if image_alpha <= 0
	{
		instance_destroy();
	}
}