waitUntil {!(isNull player)}; //JIP proofing

//["init",false] execVM "misc\lights.sqf";

//making sure only players slotted in the TACP can interact
if (player getVariable ["isTACP", false]) then {
	execVM "misc\lightsAddAction.sqf";
};