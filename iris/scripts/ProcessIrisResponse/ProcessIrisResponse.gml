/// ProcessIrisResponse() -- Update IRIS's Bids after the player's choice
show_debug_message("ProcessIrisResponse()");

//  After the player makes a choice, IRIS reacts to it.

var i, c;

// var bidPick = Iris.currentBid;
var bidPickID = -1;

// First, add all the valid Iris bid responses for this Player bid to IRIS'S list
for (i = 0; i < ds_map_find_value(Player.bidTable[Player.currentBid],"BNUM"); i++)
	{
	ds_list_add(Iris.currentBidList, ds_map_find_value(Player.bidTable[Player.currentBid],"B" + string(i+1)));
	}

// Pick IRIS's next response. (Currently, this is just the last one we iterate over.)
for (i = 0; i < ds_list_size(Iris.currentBidList); i++)
	{
	bidPickID = ds_list_find_value(Iris.currentBidList,i);
	}
Iris.currentBid = bidPickID;

// Remove the bid the player just picked from the Player's bid list
if (bidPickID != -1)
	{	
	ds_list_delete(Iris.currentBidList,bidPickID);
	Iris.speechText = ds_map_find_value(Iris.bidTable[bidPickID],"TEXT");
	}
/* else crash */