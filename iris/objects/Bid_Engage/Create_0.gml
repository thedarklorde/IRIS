/// @description Insert description here
// You can write your code in this editor

statement = "How are you?";

choice[0] = BuildMap("STMT", "Hi there.", "INTM", 20, "TRST", 5, "AFCT", 10, "FEAR", 0, "BNUM", 1, "B1", Bid_Greeting);
choice[1] = BuildMap("STMT", "Good evening.", "INTM", 10, "TRST", 0, "AFCT", 15, "FEAR", 20, "BNUM", 1, "B1", Bid_Greeting);
choice[2] = BuildMap("STMT", "What is your diagnostic status?", "INTM", -20, "TRST", -10, "AFCT", -15, "FEAR", 60, "BNUM", 1, "B1", Bid_Greeting);
