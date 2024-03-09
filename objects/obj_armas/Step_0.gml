

if (object_exists(obj_armas) and object_exists(obj_reticula)and object_exists(obj_player)){
if ((obj_reticula.y >= obj_player.y+64)or(obj_reticula.y <= obj_player.y-64)) 
or ((obj_reticula.x >= obj_player.x+64)or(obj_reticula.x <= obj_player.x-64)){
	mouDir = point_direction(x,y,mouse_x,mouse_y);
}

}
x = obj_player.x + lengthdir_x(32, mouDir);
y = obj_player.y + lengthdir_y(32, mouDir);

image_angle = mouDir;

tim += 0.016 ;




image_xscale -= 0.04;
image_yscale -= 0.04;

if ((image_xscale  <=1)or (image_yscale  <=1)){
	image_xscale = 1;
	image_yscale =1;
}