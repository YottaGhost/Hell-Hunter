



gradient_sprite = spr_gradient;

shader = sh_gradientMap;
u_mix_amount = shader_get_uniform(shader,"mix_amount");
u_map_index = shader_get_uniform(shader, "map_index");
u_texel_h = shader_get_uniform(shader, "texel_h");
u_gradient_tex = shader_get_sampler_index(shader, "gradient_tex");

gradient_tex = sprite_get_texture(gradient_sprite, 0);
texel_h = texture_get_texel_height(gradient_tex);