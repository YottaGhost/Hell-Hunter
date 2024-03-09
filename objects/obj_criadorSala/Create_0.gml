var list = obj_player.list;

ds_list_shuffle(list);

sala = ds_list_find_value(list, ds_list_size(list) - 1);

ds_list_delete(list, ds_list_size(list) - 1);



//sala = irandom_range(1,15);

obj_player.x = 255;
obj_player.y = 275;

//sala = 1;

andar = obj_player.andar;

var surf = surface_create(32,18);

roomEsc = "room_"+string(andar)+"_"+string(sala);

roomId = asset_get_index(roomEsc);

surface_set_target(surf);
draw_sprite(roomId,-1,0,0);
surface_reset_target();

for (var i =0; i <=18; i++;){
	for (var o =0; o<=32; o++;){
		
		var Cor = surface_getpixel(surf,o,i);
		
		if (Cor == 9437328){
			//cria as paredes do mapa
			instance_create_layer((o*16),(i*16),"fundo",obj_parede);	
		}
		if (Cor == 15773184){
			//cria a agua normal
			instance_create_layer((o*16),(i*16),"fundo",obj_agua);	
		}
		if (Cor == 10055168){
			//cria a agua com sombra
			instance_create_layer((o*16),(i*16),"fundo",obj_aguacima);	
		}
		if (Cor == 196735){
			//cria os spawner de inimigos
			instance_create_layer((o*16),(i*16),"fundo",obj_spawner);	
		}
		if (Cor == 1616562){
			//cria o blocker
			instance_create_layer((o*16),(i*16),"fundo2",obj_blocker);	
		}
		if (Cor == 58708){
			//cria o spike
			instance_create_layer((o*16),(i*16),"fundo",obj_spike);	
		}
		
		show_debug_message(Cor);
		
	}
}
show_debug_message(roomEsc);
