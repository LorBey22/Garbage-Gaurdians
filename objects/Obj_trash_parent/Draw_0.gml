// Draw the trash item normally
draw_self();



// Show the tutorial above the first item
if (global.show_tutorial and global.trash_sorted == 0)
{
    draw_set_color(c_blue);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(x+200, y+50, @"DRAG ME TO THE TRASH
	TO DEFEAT THE
	TRASH MONSTER!");

    draw_set_color(c_white);
	
}

if (global.show_tutorial and global.trash_sorted == 1)
{
	draw_set_color(c_blue);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(200, 100, @"CLICK THE QUESTION MARK TO SEE 
	A HELPFUL TRASH CHART");
	draw_arrow(128,64,57,45,20)

    draw_set_color(c_white);
}

// Check whether the mouse is hovering over this item
if (position_meeting(mouse_x, mouse_y, id))
{
    var item_name = "Trash";

	switch (object_index)
	{
		case Obj_candy_wrapper:
			item_name = "Candy Wrapper";
			break;

		case Obj_Chip_Bag:
			item_name = "Chip Bag";
			break;

		case Obj_Styrofoam_Cup:
			item_name = "Styrofoam Cup";
			break;

		case Obj_Used_Tissue:
			item_name = "Used Tissue";
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