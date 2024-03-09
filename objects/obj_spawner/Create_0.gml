scoreIn = obj_player.sala *2;

for (var i=0; scoreIn >0; i++){
	
	var inim = choose(1,2,5,10,15,25);
	
	if inim <=scoreIn{
		
		if inim == 1{
			instance_create_layer(x,y, "inimigos",obj_bat);
		}
		if inim == 2{
			instance_create_layer(x,y, "inimigos",obj_demon);
		}
		if inim == 5{
			instance_create_layer(x,y, "inimigos",obj_bat);
		}
		if inim == 10{
			instance_create_layer(x,y, "inimigos",obj_bat);
		}
		if inim == 15{
			instance_create_layer(x,y, "inimigos",obj_bat);
		}
		if inim == 25{
			instance_create_layer(x,y, "inimigos",obj_bat);
		}
		scoreIn -= inim;
		show_debug_message("valor tirado pro inimigo");
		show_debug_message(inim);
		show_debug_message("score atual");
		show_debug_message(scoreIn);
	
	}
	
}