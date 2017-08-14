/// @description Insert description here
// You can write your code in this editor

global.STAT_INTIMACY = 0;
global.STAT_TRUST = 1;
global.STAT_AFFECTION = 2;

statTable[global.STAT_INTIMACY] =	BuildMap("Name",	"Intimacy",		"Value",	0,	"Level",	1);
statTable[global.STAT_TRUST] =		BuildMap("Name",	"Trust",		"Value",	0,	"Level",	2);
statTable[global.STAT_AFFECTION] =	BuildMap("Name",	"Affection",	"Value",	0,	"Level",	0);

bidTable[0] = BuildMap("TEXT", "Hello there.", 
							"GINTM",  5,	"GTRST",  5,	"GAFCT",  0, 	// to IRIS
							"RINTM", 20,	"RTRST", 10,	"RAFCT",  5,	// to PLAYER
							"BNUM", 2, "B1", 1,	"B2", 3);					// Potential response list
							
bidTable[1] = BuildMap("TEXT", "Hi.",
							"GINTM", 10,	"GTRST",  5,	"GAFCT",  5, 	// to IRIS
							"RINTM", 10,	"RTRST", 20,	"RAFCT",  5,	// to PLAYER
							"BNUM", 2, "B1", 1,	"B2", 3);					// Potential response list
							
bidTable[2] = BuildMap("TEXT", "What's wrong?",
							"GINTM",  5,	"GTRST", 10,	"GAFCT",  5, 	// to IRIS
							"RINTM", 30,	"RTRST", 10,	"RAFCT", 15,	// to PLAYER
							"BNUM", 2, "B1", 0,	"B2", 2);					// Potential response list
							
bidTable[3] = BuildMap("TEXT", "What is your diagnostic status?",
							"GINTM", -50,	"GTRST",  -5,	"GAFCT", -5, 	// to IRIS
							"RINTM", -50,	"RTRST", -10,	"RAFCT", -5,	// to PLAYER
							"BNUM", 2, "B1", 0,	"B2", 2);					// Potential response list

bidTable[4] = BuildMap("TEXT", "How are you?",
							"GINTM", 10,	"GTRST",  5,	"GAFCT",  20, 	// to IRIS
							"RINTM", 20,	"RTRST", 20,	"RAFCT",  10,	// to PLAYER
							"BNUM", 2, "B1", 0,	"B2", 3);					// Potential response list

bidTable[5] = BuildMap("TEXT", "I'm fine.",
							"GINTM", -10,	"GTRST",  0,	"GAFCT", -5, 	// to IRIS
							"RINTM", -10,	"RTRST",  0,	"RAFCT", -5,	// to PLAYER
							"BNUM", 2, "B1", 0,	"B2", 3);					// Potential response list
							
bidTable[6] = BuildMap("TEXT", "I'm well, thank you.",
							"GINTM",  5,	"GTRST", 10,	"GAFCT", 10, 	// to IRIS
							"RINTM",  5,	"RTRST", 10,	"RAFCT", 10,	// to PLAYER
							"BNUM", 2, "B1", 0,	"B2", 2);					// Potential response list
							
bidTable[7] = BuildMap("TEXT", "Who are you?",
							"GINTM", -10,	"GTRST", -20,	"GAFCT",  0, 	// to IRIS
							"RINTM", -10,	"RTRST",  -5,	"RAFCT",  0,	// to PLAYER
							"BNUM", 2, "B1", 2,	"B2", 3);					// Potential response list


currentBidList = ds_list_create();
ds_list_add(currentBidList, 0);


currentBid = 0;


// GUI

status1X = 50;

status1Y = 80;
status2Y = 160;
status3Y = 240;

status1Index = 0;
status2Index = 1;
status3Index = 2;

statusLabelXOffset = 0;
statusLabelYOffset = -30;

choiceX = 80;
choiceY = 800;
choiceYOffset = 100;
choiceYSub = 50;
