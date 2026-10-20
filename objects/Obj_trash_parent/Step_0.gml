if (dragging)
{
    if (mouse_check_button(mb_left))
    {
        x = mouse_x + offset_x;
        y = mouse_y + offset_y;
    }
    else
    {
        dragging = false;
        if (place_meeting(x, y, Obj_trash_bin)) {

			var trash_choice = choose(
				Obj_candy_wrapper,
				Obj_Chip_Bag,
				Obj_Styrofoam_Cup,
				Obj_Used_Tissue
			);

			instance_create_layer(
				650,
				85,
				"Trash_Instances",
				trash_choice
			);

			instance_destroy();
		}
				}		
    }