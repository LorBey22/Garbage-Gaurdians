var monster = instance_find(Obj_Trash_Monster, 0);

if (monster != noone)
{
    // Health bar dimensions
    var bar_width = 720;
    var bar_height = 48;

    // Position at the top center of the screen
    var bar_x = (display_get_gui_width() - bar_width) / 2;
    var bar_y = 40;

    // Calculate health percentage
    var health_percent = clamp(
        display_health / monster.mon_max_health,
        0,
        1
    );

    // Background
    draw_set_color(c_black);
    draw_rectangle(
        bar_x - 3, bar_y - 3,
        bar_x + bar_width + 3, bar_y + bar_height + 3,
        false
    );

    // Empty health bar
    draw_set_color(make_color_rgb(70, 70, 70));
    draw_rectangle(
        bar_x, bar_y,
        bar_x + bar_width, bar_y + bar_height,
        false
    );

    // Health bar color
    if (health_percent > 0.5)
    {
        draw_set_color(c_lime);
    }
    else if (health_percent > 0.25)
    {
        draw_set_color(c_yellow);
    }
    else
    {
        draw_set_color(c_red);
    }

    // Filled health bar
    draw_rectangle(
        bar_x, bar_y,
        bar_x + (bar_width * health_percent),
        bar_y + bar_height,
        false
    );

    // Monster health text
    draw_set_color(c_black);
	draw_set_font(Font1);
    draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
    draw_text(
        bar_x + bar_width / 2,
        bar_y + bar_height/2,
        "TRASH MONSTER HEALTH: " +
        string(round(monster.mon_health/monster.mon_max_health * 100)  ) + "%"
    );

    draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}