if (dragging) {
    if (!mouse_check_button(mb_left)) {
        dragging = false;
        instance_destroy();
    }
}