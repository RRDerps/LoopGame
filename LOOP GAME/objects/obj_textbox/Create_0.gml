//parameters
textbox_width = 605;
textbox_height = 202;
border = 8;
line_sep = 12;
line_width = textbox_width - border*2;
textb_sprite = spr_textbox;
textb_img = 0;
// if I decide to animate textbox later
textb_img_speed = 6/60;

//text
page = 0;
page_number = 0;
text[0] = "Machine...";
text[1] = "I will cut you down,";
text[2] = "break you apart,";
text[3] = "splay the gore of your profane form across the STARS-";
text[4] = "I WILL GRIND YOU DOWN UNTIL THE VERY SPARKS CRY FOR MERCY.";
text[5] = "MY HANDS SHALL RELISH ENDING YOU. HERE. AND. NOW.";
text_length[0] = string_length(text[0]);
draw_char =0;
text_spd = 1;

setup = false;




//profile 250x250