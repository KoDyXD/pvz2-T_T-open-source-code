/// @description weas utiles para el editor
depth = 4;

global.click = false;

instance_create_depth(1472.5,1116,0,camara3);

//fondo del patio
var _i = layer_get_id("Background");
var _ii = layer_background_get_id(_i);
var _patio = asset_get_index(global.editor_nivel_base[0]);
layer_background_sprite(_ii,_patio);

alarm_set(0,2);
alarm_set(2,1);

array_tamano = array_length(global.editor_oleada_cual);