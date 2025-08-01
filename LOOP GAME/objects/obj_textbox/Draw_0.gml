accept_key = keyboard_check_pressed(vk_space);
textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 430;

// Setup
if (!setup) {
    setup = true;
    draw_set_font(font_main);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);

    // loop through pages
    page_number = array_length(text);
    for (var p = 0; p < page_number; p++) {
        // How many characters are on each page to store in text_length array
        text_length[p] = string_length(text[p]);

        // Get the x position (center the textbox)
        text_x_offset[p] = 355;
    }
}

// Typing characters
if (draw_char < text_length[page]) {
    draw_char += text_spd;
    draw_char = clamp(draw_char, 0, text_length[page]);
}

// page flipping
if (accept_key) {
    // If typing is done
    if (draw_char == text_length[page]) {
        // go to next page
        if (page < page_number - 1) {
            page++;
            draw_char = 0;
        }
        // Byebye textbox
        else {
            instance_destroy();
        }
    }
    // If not done typing, please be done
    else {
        draw_char = text_length[page];
    }
}

//Draw textbox
textb_img += textb_img_speed;
textb_spr_w = sprite_get_width(textb_spr);
textb_spr_h = sprite_get_height(textb_spr);

draw_sprite_ext(txtb_spr, textb_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/textb_spr_w, textbox_height/textb_spr_h, 0, c_white, 1)

// Draw text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width);