if (place_meeting(x-5,y,obj_parede) and (velh<0)){velh = 0;show_debug_message("esquerda");}	
if (place_meeting(x+5,y,obj_parede) and (velh>0)){velh =0;show_debug_message("direita");}
if (place_meeting(x,y-5,obj_parede) and (velv<0)){velv =0;show_debug_message("cima");}
if (place_meeting(x,y+5,obj_parede) and ((velv>0)or speed >0)){ velv =0;show_debug_message("baixo");}

//parte do dash
#region texto passado 

//if (place_meeting(x,y-3,obj_parede))or(place_meeting(x,y+3,obj_parede)){
//	speed =0;
//	
//	if (y >=150){
//		if y >= 246{
//			y-=5;
//		}else{y+=5;}
//	}if (y<=149){
//		if y<=42{
//		y+=5;
//		}else{
//		y+=5;}
//	}
//}
//if (place_meeting(x-3,y,obj_parede))or(place_meeting(x+3,y,obj_parede)){
//	speed =0;
//	
//	
//	if (x >=250){
//		if x <470{
//			x+=5;
//		}
//		else {x-=5;}
//	}if (x<=249){
//		if x>40{
//			x-=5;
//		}
//		else {x +=5;}
//	}
//}
#endregion
x += ((velh * speedMod)*movSpeedX);
y += ((velv * speedMod)*movSpeedY);

if !place_meeting(x,y,obj_parede){
 xantigo = x;
 yantigo = y;
}else {x=xantigo; y=yantigo;}



