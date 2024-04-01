//esta funcion permite crear zombis de manera mas facil y rapida
function instance_create_zombis(Xpos,Ypos,cantidadMIN,cantidadMAX,zombi){
	
	//Xpos;	punto X para generar los zombis
	//Ypos;	//fila en la que se creara el zombi
	//cantidadMIN;	minimo de zombis
	//cantidadMAX;	maximo de zombis
	//zombi;	//zombi a generar
	
	if zombi > -1
	{
		///cantidad de zombis
		var _cantidad = irandom_range(cantidadMIN,cantidadMAX);
		
		var _fila1 = (186*4)-10;
		var _fila2 = (186*5)-10;
		var _fila3 = (186*6)-10;
		var _fila4 = (186*7)-10;
		var _fila5 = (186*8)-10;
			
		for (var i = 0; i < _cantidad; ++i) {
	    
			///posicion en X
			switch(Xpos)
			{
				case -1: var _X = irandom_range(2650,2700); break;	//generar muy cerca del patio
				case 0: var _X = irandom_range(2685,2825); break;	//generar zombis cerca del patio
				case 1: var _X = irandom_range(2800,2990); break;	//generar zombis a una distancia normal del patio
				case 2: var _X = irandom_range(2975,3200); break;	//generar zombis un poco mas lejos del patio
				case 3: var _X = irandom_range(3185,3350); break;	//generar zombis mas lejos del patio
				case 4: var _X = irandom_range(2650,3350); break;	//generar zombis en todo el rango posible
			}
		
			///posicion en Y
			switch(Ypos)
			{
				case -10: var _fila = choose(_fila4,_fila5); break;	//fila 4,5
				case -9: var _fila = choose(_fila1,_fila3); break;	//fila 1,3
				case -8: var _fila = choose(_fila1,_fila3,_fila4,_fila5); break; //fila 1,3,4,5
				case -7: var _fila = choose(_fila2,_fila4,_fila5); break;	//fila 2,4,5
				case -6: var _fila = choose(_fila2,_fila3,_fila4,_fila5); break; //fila 2,3,4,5
				case -5: var _fila = choose(_fila1,_fila5); break; //fila 1,5
				case -4: var _fila = choose(_fila1,_fila2,_fila4,_fila5); break; //fila 1,2,4,5
				case -3: var _fila = choose(_fila2,_fila4); break; //fila 2,4
				case -2: var _fila = choose(_fila1,_fila3,_fila5); break; //fila 1,3,5
				case -1: var _fila = choose(_fila2,_fila3,_fila4); break; //fila 2,3,4
				case 0: var _fila = choose(_fila1,_fila2,_fila3,_fila4,_fila5); break; //fila 1,2,3,4,5
				case 1: var _fila = _fila1; break; //fila 1
				case 2: var _fila = _fila2; break; //fila 2
				case 3: var _fila = _fila3; break; //fila 3
				case 4: var _fila = _fila4; break; //fila 4
				case 5: var _fila = _fila5; break; //fila 5
			}
		
			instance_create_layer(_X,_fila,"npcs",zombi);	//crear zombis
		}
	}
}