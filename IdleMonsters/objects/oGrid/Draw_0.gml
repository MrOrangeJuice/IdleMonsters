for (var i = 0; i < INVENTORY_SLOTS; i++)
{
	var xx = x + (i mod rowLength) * 16;
	var yy = y + (i div rowLength) * 16;
	var hover = (oMouse.inventoryHover == id) && (oMouse.slotHover == i);
	draw_sprite(sSquare,hover,xx,yy);
	if(inventory[i] != -1)
	{
		var alpha = 1.0;
		if (oMouse.inventoryDrag == id) && (oMouse.slotDrag == i) alpha = 0.5;
		draw_set_alpha(alpha);
		draw_sprite(global.monsters[inventory[i]],global.frameTime,xx,yy);	
		draw_set_alpha(1.0);
	}
}