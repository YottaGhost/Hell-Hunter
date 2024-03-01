

i += 0.10;
timer += room_speed *1;

if (i >=1){
xyvelhos[0] = x;
xyvelhos[1] = y;
i=0;
}

speed -=4.5;
if speed <=0 {speed=0;}

if speed > 0 {
	if timer >=0.5{
		instance_create_layer(x+2,y+2,"instances",obj_ghost);
		timer =0;
	}
}

waitDash += 0.016;