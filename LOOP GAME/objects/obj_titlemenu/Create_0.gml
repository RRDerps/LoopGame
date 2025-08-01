width = 100;
height = 104;

op_border = 8;
op_space = 32;

pos = 0;

//pause menu
option[0, 0] = "Start Game";
option[0, 1] = "Settings";
option[0, 2] = "Quit Game";

//settings menu
option[1, 0] = "Window Size";
option[1, 1] = "Brightness";
option[1, 2] = "Controls";
option[1, 3] = "Back";

op_length = 0;
menu_level = 0;

draw_set_font(font_main);
op_space = string_height("Mg") + 4;  // fix for vertical clipping (patch job dont sue me)
