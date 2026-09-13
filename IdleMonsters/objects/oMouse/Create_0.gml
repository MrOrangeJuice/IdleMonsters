inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;
slotDrag = -1;
itemDrag = -1;

mouseOver = function()
{
	slotHover = -1;
	inventoryHover = -1;
	
	var mx = mouse_x;
	var my = mouse_y;
	
	with(oGrid)
	{
		for(var i = 0; i < INVENTORY_SLOTS; i++)
		{
			var xx = x + (i mod rowLength) * 16;
			var yy = y + (i div rowLength) * 16;
					
			if(point_in_rectangle(mx,my,xx,yy,xx+16,yy+16))
			{
				other.slotHover = i;
				other.inventoryHover = id;
			}
		}
	}
}

stateFree = function()
{
	mouseOver();
	if(mouse_check_button(mb_left)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1)
	{
		audio_play_sound(sndPickup,5,false);
		
		state = stateDrag;
		itemDrag = inventoryHover.inventory[slotHover];
		inventoryDrag = inventoryHover;
		slotDrag = slotHover;
	}
}

stateDrag = function()
{
	mouseOver();
	if(!mouse_check_button(mb_left))
	{
		audio_play_sound(sndPutDown,5,false);
		
		if (slotHover != -1) InventorySwap(inventoryDrag,slotDrag,inventoryHover,slotHover);
		
		state = stateFree;
		itemDrag = -1;
		inventoryDrag = -1;
		slotDrag = -1;
	}
}

state = stateFree;