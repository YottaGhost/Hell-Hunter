if !(instance_exists(obj_inim)){
	instance_destroy();
}

if obj_player.y >235 and disable == true{
show_debug_message("HEY");

}
else{	disable = false;
	sprite_collision_mask(spr_parede, true,1,0,0,0,0,0,0)
	show_debug_message("HOuuu");}