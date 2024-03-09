

if tim >= firerate {

	var projAtual = instance_create_layer(x,y, "proj", proj);
	projAtual.direction = mouDir+random_range(-acc,acc);
	projAtual.dano = dano;
	tim = 0;
	obj_reticula.image_xscale =1.7;
	obj_reticula.image_yscale =1.7;
	image_xscale =1.5;
	image_yscale =1.5;
}
