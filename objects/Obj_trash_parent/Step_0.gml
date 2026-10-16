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
            instance_destroy();
        }		
    }
}