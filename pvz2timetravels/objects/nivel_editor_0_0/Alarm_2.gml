/// @description recrear contenido del patio de la oleada -1
instance_destroy(editor_patio_debug);

for (var i = 0; i < array_length(global.editor_oleada_cual); ++i) {
	if global.editor_oleada_cual[i][0] == -1 and global.editor_oleada_cual[i][1] == "planta"
	{
		var _x = ((global.editor_oleada_cual[i][2]+5)*166)+166/2;
		var _y = ((global.editor_oleada_cual[i][3]+2)*186)+186/2;
		var j = instance_create_layer(_x,_y,"hud",editor_patio_semilla);
		j.planta = [-1,"planta",global.editor_oleada_cual[i][2],global.editor_oleada_cual[i][3],global.editor_oleada_cual[i][4]];
		j.pos = i;
		j.alarm[0] = 1;
	}
}