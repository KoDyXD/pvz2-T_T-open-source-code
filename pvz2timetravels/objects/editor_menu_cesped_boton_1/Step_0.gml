/// @description Insert description here
if editor_cesped == 1
{
	if cesped_alpha[0] == 0
	{
		cesped_alpha[0] = 1;
		cesped_alpha[1] = 0;
		cesped_alpha[2] = 0;
	}
}
if editor_cesped == 2
{
	if cesped_alpha[1] == 0
	{
		cesped_alpha[0] = 0;
		cesped_alpha[1] = 1;
		cesped_alpha[2] = 0;
	}
}
if editor_cesped == 3
{
	if cesped_alpha[2] == 0
	{
		cesped_alpha[0] = 0;
		cesped_alpha[1] = 0;
		cesped_alpha[2] = 1;
	}
}