//script para cambiar la musica de vueltacasete de neon
function scr_music_vcn(music){
	if instance_exists(musica_neon)
	{
		switch(music)
		{
			case "punk":
				musica_neon.music_cual = "punk"
			break;
			case "pop":
				musica_neon.music_cual = "pop"
			break;
			case "rap":
				musica_neon.music_cual = "rap"
			break;
			case "metal":
				musica_neon.music_cual = "metal"
			break;
			case "balada":
				musica_neon.music_cual = "balada"
			break;
			case "8-bit":
				musica_neon.music_cual = "8bit"
			break;
			case "semillas":
				musica_neon.music_cual = "semillas"
			break;
		}
	}
}