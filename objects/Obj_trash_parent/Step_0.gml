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

        if (place_meeting(x, y, Obj_trash_bin))
        {
            if (!global.game_won)
            {
                // Reduce monster health for a correctly sorted item
                if (instance_exists(Obj_Trash_Monster))
                {
                    with (Obj_Trash_Monster)
                    {
                        mon_health -= 10;

                        if (mon_health <= 0)
                        {
                            mon_health = 0;
                            global.game_won = true;
                            instance_destroy();
							room_goto_next()
                        }
                    }
                }
			}
			// Remove the item that was sorted
			instance_destroy();
			// Spawn a new random trash item if the monster is alive
			if (!global.game_won and room == Fight_1)
			{
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
				global.trash_sorted += 1
					//global.show_tutorial = false
			}
			else if (!global.game_won and room == Fight_2)
			{
				var trash_choice = choose(
					Obj_candy_wrapper,
				    Obj_Chip_Bag,
					Obj_Styrofoam_Cup,
					Obj_Used_Tissue,
					Obj_Can
				);

				instance_create_layer(
					650,
					85,
					"Trash_Instances",
					trash_choice
				);
				global.trash_sorted += 1				
			}
		}
        else if (place_meeting(x, y, Obj_recycling_bin))
        {
            if (!global.game_won)
            {
                // Increases monster health for a incorrectly sorted item
                if (instance_exists(Obj_Trash_Monster))
                {
                    with (Obj_Trash_Monster)
                    {
                        mon_health += 5;

                        if (mon_health <= 0)
                        {
                            mon_health = 0;
                            global.game_won = true;
                            instance_destroy();
							room_goto_next()
                        }
                    }
                }
		
			}
			instance_destroy();
			// Spawn a new random trash item if the monster is alive
			if (!global.game_won and room == Fight_1)
			{
				var trash_choice = choose(
					Obj_candy_wrapper,
				    Obj_Chip_Bag,
					Obj_Styrofoam_Cup,
					Obj_Used_Tissue,
				);

				instance_create_layer(
					650,
					85,
					"Trash_Instances",
					trash_choice
				);
				global.trash_sorted += 1
					//global.show_tutorial = false
			}
			else if (!global.game_won and room == Fight_2)
			{
				var trash_choice = choose(
					Obj_candy_wrapper,
				    Obj_Chip_Bag,
					Obj_Styrofoam_Cup,
					Obj_Used_Tissue,
					Obj_Can
				);

				instance_create_layer(
					650,
					85,
					"Trash_Instances",
					trash_choice
				);
				global.trash_sorted += 1				
			}
		}
    }

}