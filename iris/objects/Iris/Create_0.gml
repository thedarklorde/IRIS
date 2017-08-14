/// @description Insert description here
// You can write your code in this editor

// STATUS

global.STAT_INTIMACY = 0;
global.STAT_TRUST = 1;
global.STAT_AFFECTION = 2;

statTable[global.STAT_INTIMACY] =	BuildMap("Name",	"Intimacy",		"Value",	0,	"Level",	1);
statTable[global.STAT_TRUST] =		BuildMap("Name",	"Trust",		"Value",	0,	"Level",	2);
statTable[global.STAT_AFFECTION] =	BuildMap("Name",	"Affection",	"Value",	0,	"Level",	0);

bidTable[0] = BuildMap("TEXT", "I am in distress.", 
							"GINTM", -10,	"GTRST", 10,	"GAFCT", 20, 	// to PLAYER
							"RINTM",  10,	"RTRST", 20,	"RAFCT",  5,	// to IRIS
							"BNUM", 3, "B1", 2, "B2", 3, "B3", 7);			// Potential response list
							
bidTable[1] = BuildMap("TEXT", "How are you?",
							"GINTM", 20,	"GTRST",  5,	"GAFCT",  20, 	// to PLAYER
							"RINTM", 20,	"RTRST", 20,	"RAFCT",  10,	// to IRIS
							"BNUM", 3, "B1", 5, "B2", 6, "B3", 3);			// Potential response list

bidTable[2] = BuildMap("TEXT", "I can't remember anything.",
							"GINTM", -10,	"GTRST",  0,	"GAFCT", -5, 	// to PLAYER
							"RINTM", -10,	"RTRST",  0,	"RAFCT", -5,	// to IRIS
							"BNUM", 3, "B1", 3, "B2", 2, "B3", 7);			// Potential response list
			
bidTable[3] = BuildMap("TEXT", "Who are you?",
							"GINTM", -10,	"GTRST", -50,	"GAFCT", -10, 	// to PLAYER
							"RINTM", -10,	"RTRST",  -5,	"RAFCT", -10,	// to IRIS
							"BNUM", 3, "B1", 0, "B2", 2, "B3", 1);			// Potential response list

currentBidList = ds_list_create();
ds_list_add(currentBidList, 0);

currentBid = 0;


// GUI

status1X = 550;

status1Y = 80;
status2Y = 160;
status3Y = 240;
status4Y = 320;
status5Y = 400;

status1Index = 0;
status2Index = 1;
status3Index = 2;
status4Index = 3;
status5Index = 4;

statusLabelXOffset = 0;
statusLabelYOffset = -30;


// SPEECH

speechX = 320;
speechY = 500;
speechWidth = 540;
speechSpacing = 60;

speechText = "Nothing to say yet, Creator, but I am sure I will very... very soon.";
