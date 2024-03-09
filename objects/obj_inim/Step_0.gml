
if (tipo =="melee"){
	mp_potential_step_object(obj_player.x, obj_player.y, speed, obj_parede);
}
if (tipo =="voador"){
	direction = point_direction(x,y, obj_player.x,obj_player.y)+Mod;
}


if place_meeting(x,y, obj_player){
	obj_player.dano(dano);
	obj_player.xE = x;
	obj_player.yE = y;
	obj_player.Recuo();
	
}

if (place_meeting(x,y,obj_bala)){
	var inst = instance_nearest(x,y, obj_bala);
	//var Dir = point_direction(inst.x,inst.y, x, y);
	//x += lengthdir_x(8,Dir);
	//y += lengthdir_y(8,Dir)*-1;
	
	
	if (invic == false){ 
		hp -= inst.dano;
		invic = true;
	}
}


if invic == true{
	tim += 0.16;
}

if tim >=0.7 {
	invic = false;
	tim =0;
}

if hp <=0{
	var a = irandom_range(1,5);
	for (var i =1; i<=a;i++){
	instance_create_layer(x+random_range(-15,15),y+random_range(-15,15),"props",obj_moeda);
	}
	obj_player.combo++;
	obj_vida.scale += 0.2;
	instance_destroy();
}

//var XX = x
//x -= 500+random(1800);
//var NearestIim = instance_nearest(XX,y,obj_inim)
//x =XX; 

////if instance_exists(obj_player) {
//
//    if (distance_to_object(obj_player) <600) {
//
//		if (NearestIim != id) {
//			if (distance_to_object(NearestIim) <6) {
//				direction = point_direction(NearestIim.x,NearestIim.y,x,y)
//			}
//            else {
//                direction = point_direction(x,y,obj_player.x,obj_player.y)
//			}
//        
//		}
//        else {
//            direction = point_direction(x,y,obj_player.x,obj_player.y)
//        }    
//	}
//
//else {
//        direction = point_direction(x,y,obj_player.x,obj_player.y)
//            }            
//}
//show_debug_message(NearestIim)






