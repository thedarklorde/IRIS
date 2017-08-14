/// ProcessChoice() -- Process the consequecenes of the player's choice
show_debug_message("ProcessChoice(), argument[0]=<" + string(argument[0]) + ">");

var i, j, c, m;

// Set the current bid to the thing the player just picked
Player.currentBid = argument0;

// Grab the bidTable for this bid and incrememt all of the status values (PLAYER and IRIS) by the values specified in this bid
c = Player.bidTable[argument0];
m = Iris.statTable[global.STAT_INTIMACY];  m[? "Value"] += c[? "GINTM"];
m = Iris.statTable[global.STAT_TRUST];     m[? "Value"] += c[? "GTRST"];
m = Iris.statTable[global.STAT_AFFECTION]; m[? "Value"] += c[? "GAFCT"];

m = Player.statTable[global.STAT_INTIMACY];  m[? "Value"] += c[? "RINTM"];
m = Player.statTable[global.STAT_TRUST];     m[? "Value"] += c[? "RTRST"];
m = Player.statTable[global.STAT_AFFECTION]; m[? "Value"] += c[? "RAFCT"];
