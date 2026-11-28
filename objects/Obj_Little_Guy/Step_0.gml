hover_phase += hover_speed;

if (global.fight_one_done == false)
{
    target_x = 140;
    target_y = 575;
}
else if (global.fight_two_done == false)
{
    target_x = 680;
    target_y = 400;
}
else
{
    target_x = 1085;
    target_y = 315;
}



x = lerp(x, target_x, 0.1);

y = lerp(y, target_y + sin(hover_phase) * hover_amount, 0.1);