transition_alpha += transition_speed * transition_direction;
transition_alpha = clamp(transition_alpha, 0, 1);

if (transition_direction == 1 && transition_alpha >= 1) {
    transition_direction = -1;
    room_goto(target_room);
}

if (transition_direction == -1 && transition_alpha <= 0) {
    instance_destroy();
}
