//parameters
textbox_width = 620;
textbox_height = 202;
border = 8;
line_sep = font_get_size(font_main) + 10;
line_width = (textbox_width - border * 2)- 10;
textb_sprite = spr_textbox;
textb_img = 0;
// if I decide to animate textbox later
textb_img_speed = 6 / 60;

//text
page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;
draw_char = 0;
text_spd = 0.3;

//options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;

//effects 
scr_set_defaults_for_text();
last_free_space = 0;

