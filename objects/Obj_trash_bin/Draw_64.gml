if (global.game_won) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	
	// Set the text color to gold
    draw_set_color(make_color_rgb(255, 212, 59));
	
	
    draw_text_transformed(
        display_get_gui_width() / 2,
        display_get_gui_height() / 2,
        "LEVEL 1 COMPLETE!",
		4.0,
		4.0,
		0
    );

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}