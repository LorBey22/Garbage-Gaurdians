// Draw the trash item normally
draw_self();


// Check whether the mouse is hovering over this item
if (position_meeting(mouse_x, mouse_y, id))
{
    var item_name = "Trash";

	switch (object_index)
	{
		case Obj_Apple_Core:
			item_name = "Apple Core";
			break;
		
		case Obj_Banana_Peel:
			item_name = "Banana Peel";
			break;
			
		case Obj_Egg_Shell:
			item_name = "Egg Shell";
			break;
			
		case Obj_Potato_Skins:
			item_name = "Potato Skins";
			break;
			
		case Obj_Garden_Weeds:
			item_name = "Garden Weeds";
			break;
	}

    // Make the label easy to read
    draw_set_color(c_green);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // Draw the item's name above it
    draw_text(x, y - 20, item_name);

    // Reset drawing alignment
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}