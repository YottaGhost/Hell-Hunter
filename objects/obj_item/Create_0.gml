charmL = obj_player.listCharms;
gunL = obj_player.listGun;

ds_list_shuffle(charmL);
ds_list_shuffle(gunL);

if random_range(86,100) <=85{
	
	item = 	ds_list_find_value(charmL, ds_list_size(charmL) - 1);
	ds_list_delete(charmL, ds_list_size(charmL)-1);
}else{
	item = ds_list_find_value(gunL, ds_list_size(gunL) - 1);
	ds_list_delete(gunL, ds_list_size(gunL)-1);
}


sprite_index = asset_get_index("spr_"+string(item));
