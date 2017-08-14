/// @description Insert description here
// You can write your code in this editor

var c;

// Draw the statuses

draw_set_font(font_Status);
draw_set_halign(fa_center);

c = Player.statTable[status1Index];
draw_text(status1X,status1Y,string(c[? "Level"]) + " / " + string(c[? "Value"]));
draw_text(status1X+statusLabelXOffset,status1Y+statusLabelYOffset,c[? "Name"]);

c = Player.statTable[status2Index];
draw_text(status1X,status2Y,string(c[? "Level"]) + " / " + string(c[? "Value"]));
draw_text(status1X+statusLabelXOffset,status2Y+statusLabelYOffset,c[? "Name"]);

c = Player.statTable[status3Index];
draw_text(status1X,status3Y,string(c[? "Level"]) + " / " + string(c[? "Value"]));
draw_text(status1X+statusLabelXOffset,status3Y+statusLabelYOffset,c[? "Name"]);
