// Draw the trash item normally
draw_self();


// Check whether the mouse is hovering over this item
if (position_meeting(mouse_x, mouse_y, id))
{
    var item_name = "Trash";

	switch (object_index)
	{
		case Obj_Can:
			item_name = "Can";
			break;
		
		case Obj_Cardboard_Box:
			item_name = "Cardboard Box";
			break;
			
		case Obj_Newspaper:
			item_name = "Newspaper";
			break;
			
		case Obj_Glass_Bottle:
			item_name = "Glass Bottle";
			break;
			
		case Obj_Platic_Bottle:
			item_name = "Plastic Bottle";
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