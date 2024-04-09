/// @description desplantar
var i = instance_place(x,y,pala_usable);
if pala = true
{
	with(i)
	{
		if !place_meeting(x,y,pala_base)
		{
			other.brillo = 0.13;
		}
	}
}