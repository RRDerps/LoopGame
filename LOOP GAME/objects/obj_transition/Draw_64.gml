var time = current_time / 100;
var scale = 1 + sin(time * 0.01) * 0.01;
var xoff = sin(time * 0.03) * 5;
var yoff = cos(time * 0.04) * 5;

draw_set_alpha(transition_alpha);
draw_rectangle(xoff, yoff, room_width * scale + xoff, room_height * scale + yoff, false);
draw_set_alpha(1);