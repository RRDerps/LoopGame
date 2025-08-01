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
            // link text for options
            if (option_number > 0) {
                create_textbox(option_link_id[option_pos]);
            }
            instance_destroy();
        }
    }
    // If not done typing, please be done
    else {
        draw_char = text_length[page];
    }
}

// Draw textbox
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
textb_img += textb_img_speed;
textb_spr_w = sprite_get_width(textb_sprite);
textb_spr_h = sprite_get_height(textb_sprite);

draw_sprite_ext(
    textb_sprite, textb_img, _txtb_x, _txtb_y,
    textbox_width / textb_spr_w, textbox_height / textb_spr_h,
    0, c_white, 1
);

// options
if (draw_char == text_length[page] && page == page_number - 1) {

    // option selection
    option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up); 
    option_pos = clamp(option_pos, 0, option_number - 1);

    // Padding inside option boxes
    var _op_bord = 6;

    // height of each option box based on font
    var _o_h = line_sep + _op_bord * 2;

    // Space between options 
    var _op_space = _o_h + 2;

    for (var op = 0; op < option_number; op++) {
        var _option_text = option[op];
        var _o_w = string_width(_option_text) + _op_bord * 2;

        // Position above textbox
        var _option_y = _txtb_y - (_op_space * (option_number - op));

        // scale factors
        var _scale_x = _o_w / textb_spr_w;
        var _scale_y = _o_h / textb_spr_h;

        // draw background box
        draw_sprite_ext(
            textb_sprite, textb_img,
            _txtb_x + 20,
            _option_y,
            _scale_x, _scale_y,
            0, c_white, 1
        ); //If there's a problem, it's totally here lol

        // arrow selection
        if (option_pos == op) {
            draw_sprite(
                spr_textbox_arrow, 0,
                _txtb_x + 20 - sprite_get_width(spr_textbox_arrow) - 6,
                _option_y + (_o_h / 2) - (sprite_get_height(spr_textbox_arrow) / 2)
            );
        }

        // draw option text
        draw_text(
            _txtb_x + 20 + _op_bord,
            _option_y + _op_bord,
            _option_text
        );
    }
}

// Draw text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(
    _txtb_x + border,
    _txtb_y + border,
    _drawtext, line_sep, line_width
);
