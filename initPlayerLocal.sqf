#include "core\devar.sqf"

waitUntil {!(isNull player)}; //JIP proofing

//making sure only players slotted in the TACP can interact
if (player getVariable ["isTACP", false]) then {
	execVM "misc\lightsAddAction.sqf";
};

//*****************
//Briefing Funktion
//Nicht entfernen!
//*****************
"" call FNC_PGS_Briefing;
"" call FNC_PGS_Credits;
//**********************
//Briefing Funktion Ende
//**********************