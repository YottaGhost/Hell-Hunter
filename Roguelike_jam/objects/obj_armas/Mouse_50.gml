
show_debug_message("AA");
if tim >= firerate {

	var projAtual = instance_create_layer(x,y, "Instances", proj);
	projAtual.direction = mouDir;
	tim = 0;
}
