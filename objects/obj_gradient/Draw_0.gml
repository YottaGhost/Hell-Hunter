

var mix_map0 = 1;

var map_index0 = 5;


gpu_set_tex_filter(true);

shader_set(shader);
	

	shader_set_uniform_f(u_mix_amount, mix_map0);
	shader_set_uniform_f(u_map_index, map_index0);
	
	shader_set_uniform_f(u_texel_h,texel_h);
	texture_set_stage(u_gradient_tex, gradient_tex);
	


	draw_sprite(spr_player, 0,15,15);
		
shader_reset();



gpu_set_tex_filter(false);