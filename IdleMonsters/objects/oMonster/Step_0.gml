if(position_meeting(mouse_x,mouse_y,id))
{
	hover = true;
	global.hover = true;
}
else
{
	hover = false;	
}

if(mouse_check_button(mb_left) && hover && !drag)
{
	drag = true;
	var offsetX = mouse_x - x;
	var offsetY = mouse_y - y;
	x += offsetX;
	y += offsetY;
}