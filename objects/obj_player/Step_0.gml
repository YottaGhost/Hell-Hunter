var right, left, down, up;

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));


speedMod =1;

if  (left){velh = -1;}
if (right){velh = 1;}
if (up){
	velv = -1;
	if (left or right){
		velv = -0.77
	}
}
if (down){
	velv = 1;
	if (left or right){
		velv = 0.77
	}
}

var xE, yE

function Recuo(){

	direction = point_direction(xE,yE,x,y);
	speed = 15;
	show_debug_message(direction);
}


if (!down && !up) {
	velv = 0;
}
if (!left && !right){
	velh = 0;
	}

i += 0.10;
timer += room_speed *1;

if (i >=1){
xyvelhos[0] = x;
xyvelhos[1] = y;
i=0;
}

speed -=3.5;
if speed <=0 {speed=0;}

if speed > 0 {
	if timer >=0.5{
		instance_create_layer(x+2,y+2,"player",obj_ghost);
		timer =0;
	}
}

invicTim += 0.16;
if invicTim >= 0.6 and invic == true{
	invic = false;
	
	}



if (hp_atual <=0){
	if revive >0{
		revive --;	
	}else{
		kill();
	}
}

function kill(){
	room_goto(Menu);
	instance_destroy();
}

waitDash += 0.016;
if waitDash>= coolDash
	dashNumber=MaxdashNumber;
	
	
comboMul = (combo/10)div 1;
show_debug_message(comboMul);

if combo == comboGoal*comboMul{
	if hp_atual <= hp_max{
		var teste = hp_max-hp_atual;
		if teste >=10
		hp_atual+= 10;
		else 
		hp_atual+=teste;
		combo +=1;
	}
}