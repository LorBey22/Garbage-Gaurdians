draw_self();
if (global.show_tutorial and global.trash_sorted == 1 and room == Fight_1 and global.diagram_up)
{
	draw_set_color(c_blue);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(1175, 235, @"CLICK THE X TO CLOSE 
	THE CHART");
	draw_arrow(1175,210,1075,185,20)

    draw_set_color(c_white);
	global.diagram_shown = true
}