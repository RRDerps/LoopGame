// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text(_text_id){

switch(_text_id) {
//test box 1
case "angry_1":
scr_text("Machine...");
scr_text("I will cut you down,");
scr_text("break you apart,");
scr_text("splay the gore of your profane form across the STARS-");
scr_text("I WILL GRIND YOU DOWN UNTIL THE VERY SPARKS CRY FOR MERCY.");
scr_text("MY HANDS SHALL RELISH ENDING YOU.");
scr_text("HERE.");
scr_text("AND.");
scr_text("NOW.");
break;

//test box 2
case "piss_2":
scr_text("piss");
scr_text("comedy.");
break;

//test box 3
case "cutie_3":
scr_text("Wawawoo?");
	scr_option("Yep", "cutie_3 - yes");
	scr_option("Na", "cutie_3 - no");
break;
case "cutie_3 - yes":
scr_text("Yes? Good for you.");
break;
case "cutie_3 - no":
scr_text("No?")
scr_text("You sure?")
break;
}
}