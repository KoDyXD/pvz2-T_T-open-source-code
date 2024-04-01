/// @description crear nombre para el archivo del nivel
_nivel_nombre = "lvleditor "+string(array_length(global.editor_nivel_cantidad))+" "+string(irandom_range(100,999))+" "+string(irandom_range(100,999))+" "+string(irandom_range(100,999))+".ini";

for (var i = 0; i < array_length(global.editor_nivel_cantidad); ++i) {
    if _nivel_nombre = global.editor_nivel_cantidad[i]
	{
		_nivel_nombre = "lvleditor "+string(array_length(global.editor_nivel_cantidad))+" "+string(irandom_range(100,999))+" "+string(irandom_range(100,999))+" "+string(irandom_range(100,999))+".ini";
		alarm_set(0,1);
	}
}