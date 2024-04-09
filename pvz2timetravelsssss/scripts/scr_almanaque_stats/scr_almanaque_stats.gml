///modificar los stats de las plantas
function scr_almanaque_stats(cual,stat,valor){
	switch(cual)
	{
		case 4:
			var i = global.stat4.x;
			var ii = global.stat4.y;
			instance_destroy(global.stat4);
			global.stat4 = instance_create_depth(i,ii,0,stat);
			global.stat4.valor = valor;
		break;
		case 5:
			var i = global.stat5.x;
			var ii = global.stat5.y;
			instance_destroy(global.stat5);
			global.stat5 = instance_create_depth(i,ii,0,stat);
			global.stat5.valor = valor;
		break;
		case 6:
			var i = global.stat6.x;
			var ii = global.stat6.y;
			instance_destroy(global.stat6);
			global.stat6 = instance_create_depth(i,ii,0,stat);
			global.stat6.valor = valor;
		break;
	}
}