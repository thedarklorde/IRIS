/// UpdatePlayerBids() -- Update the player's interface and status with new bids
show_debug_message("UpdatePlayerBids()");

// Iris just made a bid. We need to extract the best player response bids.

// i should be a number, starting at 1. The bidTable holds keys like "B1" and "B2"
// for the indexes of appropriate responses. We're going to use i to extract those.
// 
// "BNUM" holds the number of bids in this list.

for (i = 1; i <= ds_map_find_value(Iris.bidTable[Iris.currentBid],"BNUM"); i++)
	{
	// Get the index of the next possible player bid from the bid that Iris just made
	j = ds_map_find_value(Iris.bidTable[Iris.currentBid], "B" + string(i));
	
	// With that index, get the right bid from the player's table.
	c = Player.bidTable[j];
	
	show_debug_message("i=<" + string(i) + ">, j=<" + string(j) + ">, c=<" + string(c) + ">");
	
	switch (i) {
		case 1:
			ButtonChoice1.bidText = ds_map_find_value(Player.bidTable[j],"TEXT");
			ButtonChoice1.bidScoreText = "INTM: " + string(c[? "GINTM"]) + " | TRST: " + string(c[? "GTRST"]) + " | AFCT: " + string(c[? "GAFCT"]);
			ButtonChoice1.bidIndex = j;
			break;
		
		case 2:
			ButtonChoice2.bidText = ds_map_find_value(Player.bidTable[j],"TEXT");
			ButtonChoice2.bidScoreText = "INTM: " + string(c[? "GINTM"]) + " | TRST: " + string(c[? "GTRST"]) + " | AFCT: " + string(c[? "GAFCT"]);
			ButtonChoice2.bidIndex = j;
			break;
		
		case 3:
			ButtonChoice3.bidText = ds_map_find_value(Player.bidTable[j],"TEXT");
			ButtonChoice3.bidScoreText = "INTM: " + string(c[? "GINTM"]) + " | TRST: " + string(c[? "GTRST"]) + " | AFCT: " + string(c[? "GAFCT"]);
			ButtonChoice3.bidIndex = j;
			break;
		
		default:
			show_error("bad switch condition in Player:DrawGUI()",true);
		}
	}
