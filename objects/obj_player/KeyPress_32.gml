if (waitDash >=coolDash) or dashNumber>0{
direction = point_direction(xyvelhos[0],xyvelhos[1], x,y);

show_debug_message(direction);

speed = 20;
if dashNumber >0{
	dashNumber--;
}else{
	waitDash =0;
	}
}