if (keyboard_check_pressed(vk_tab)) {
    if (!instance_exists(obj_transition)) {
        var room_target;
        if (current_state == "game") {
            room_target = zoomcord_room;
            current_state = "discord";
        } else {
            room_target = asteroids_room;
            current_state = "game";
        }
        var t = instance_create_layer(0, 0, "Instances", obj_transition);
        t.target_room = room_target;
        t.transition_direction = 1;
        t.transition_alpha = 0;
    }
}
