#include "core\devar.sqf"
#include "description.ext"

private _showBriefing = true; //true=Briefings werden angezeigt, false=Keine Briefings

waitUntil {!(isNull player)}; //JIP proofing

//making sure only players slotted in the TACP can interact with the landing light and aviation system
if (player getVariable ["isTACP", false]) then {
	execVM "misc\lightsAddAction.sqf";
};

/* Briefingfunktion - Nicht entfernen */
if (_showBriefing) then {

	"" call OFW_fnc_briefingDisplay;
	"" call OFW_fnc_briefingAddCredits;

};
/* Briefingfunktion - Nicht entfernen */