/// @description ajustar tamano del sol
image_xscale = abs(valor/50);

if image_xscale < 0.5 {image_xscale = 0.5;}
if image_xscale > 1.5 {image_xscale = 1.5;}

image_yscale = image_xscale;
tam_original = image_xscale;