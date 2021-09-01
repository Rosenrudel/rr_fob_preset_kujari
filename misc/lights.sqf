///////////////////////////////////////////////////////////////////////////////////////////
//Script for switching lights from local addaction via ACE remoteexecuted on the server.
//params: [_execution = where and what to execute | _setTo = which state should the light have?]
//[_arrLights = get array from remoteExecCall]
//By Pax
///////////////////////////////////////////////////////////////////////////////////////////
//#include "..\core\devar.sqf"

params [
	["_setTo", false], ["_arrLights", [], [[]]], ["_simDirt", true], ["_simDirtier", true]
];

if (isServer) then {
	
	{
			
		[_x, _simDirt] remoteExecCall ["enableSimulationGlobal", 2];

	} forEach _arrLights;
	sleep 0.1;
	{
			
		[_x, _setTo] remoteExecCall ["BIS_fnc_switchLamp"];

	} forEach _arrLights;
	sleep 0.25;
	{
			
		[_x, _simDirtier] remoteExecCall ["enableSimulationGlobal", 2];

	} forEach _arrLights;

};