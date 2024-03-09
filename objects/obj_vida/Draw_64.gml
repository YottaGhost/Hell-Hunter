var pc;
pc = (obj_player.hp_atual/obj_player.hp_max) * 100;
draw_healthbar(16,16,32,180,pc,c_black,c_red,c_green,3,true,true);


draw_set_font(monogramG);


draw_text_color(700,480,"Sala: "+string(obj_player.sala),c_white,c_aqua,c_aqua,c_white,255);
draw_text_color(60*2,229*2,string(obj_player.moeda),c_white,c_yellow,c_yellow,c_white,255);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(monogramGG);
var combo = draw_text_transformed_color(950,80,string(obj_player.combo),scale,scale,0,c_red,c_red,c_red,c_red,255)