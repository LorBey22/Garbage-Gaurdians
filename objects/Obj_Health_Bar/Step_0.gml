var monster = instance_find(Obj_Trash_Monster, 0);

if (monster != noone)
{
    if (!initialized)
    {
        display_health = monster.mon_health;
        initialized = true;
    }

    display_health = lerp(display_health, monster.mon_health, 0.15);
}