object_set_sprite(obj_player, object_get_sprite(obj_player));


time += 0.016;
image_alpha -= 0.035;
if time >=0.3 {
image_blend = choose(c_red,c_aqua, c_purple, c_fuchsia);
time =0;
}
