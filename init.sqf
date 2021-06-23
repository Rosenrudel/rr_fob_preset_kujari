//*****************
//Briefing Funktion
//Nicht entfernen!
//*****************
FNC_Briefing = compile preprocessFileLineNumbers "briefing\briefing.sqf";
FNC_Credits = compile preprocessFileLineNumbers "briefing\x\credits.sqf";

if (!isDedicated) then {

	waitUntil {!(isNull player)}; //JIP proofing
	"" call FNC_Briefing;
	"" call FNC_Credits;
};
//**********************
//Briefing Funktion Ende
//**********************