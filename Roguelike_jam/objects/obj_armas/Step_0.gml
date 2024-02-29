


if ((obj_reticula.y >= obj_player.y+64)or(obj_reticula.y <= obj_player.y-64)) 
or ((obj_reticula.x >= obj_player.x+64)or(obj_reticula.x <= obj_player.x-64)){
	mouDir = point_direction(x,y,mouse_x,mouse_y);
}


x = obj_player.x + lengthdir_x(32, mouDir);
y = obj_player.y + lengthdir_y(32, mouDir);

image_angle = mouDir;

tim += 0.016 ;
