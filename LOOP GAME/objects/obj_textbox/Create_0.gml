//parameters
textbox_width = 605;
textbox_height = 202;
border = 8;
line_sep = font_get_size(font_main) + 8;
line_width = textbox_width - border * 2;
textb_sprite = spr_textbox;
textb_img = 0;
// if I decide to animate textbox later
textb_img_speed = 6 / 60;

//text
page = 0;
page_number = 0;
draw_char = 0;
text_spd = 0.5;

//options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;
