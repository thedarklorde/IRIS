/// @description Insert description here
// You can write your code in this editor

// STATUS

draw_set_font(font_Status);
draw_set_halign(fa_center);

var map = Iris.statTable[status1Index];
draw_text(status1X,status1Y,string(map[? "Level"]) + " / " + string(map[? "Value"]));
draw_text(status1X+statusLabelXOffset,status1Y+statusLabelYOffset,map[? "Name"]);

map = Iris.statTable[status2Index];
draw_text(status1X,status2Y,string(map[? "Level"]) + " / " + string(map[? "Value"]));
draw_text(status1X+statusLabelXOffset,status2Y+statusLabelYOffset,map[? "Name"]);

map = Iris.statTable[status3Index];
draw_text(status1X,status3Y,string(map[? "Level"]) + " / " + string(map[? "Value"]));
draw_text(status1X+statusLabelXOffset,status3Y+statusLabelYOffset,map[? "Name"]);


// SPEECH

draw_set_font(font_Speech);
draw_set_halign(fa_center);

draw_text_ext(speechX,speechY,speechText,speechSpacing,speechWidth);