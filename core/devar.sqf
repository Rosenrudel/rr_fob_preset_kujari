////////////////////////////////////////////////////////////////////////////////////////
//Place all variables which do not change often or are never expected to change in here!
////////////////////////////////////////////////////////////////////////////////////////

dummy = []; //dummy variable for personal confinience

//defines for misc/lightsSRV.sqf

fob1_helipad_lights = nearestObjects [fob1_center_helipad, ["Land_PortableLight_double_F"], 50];

//defines for misc/lights.sqf

fob1_helipad_lights_on = [
	"",
	"Schalte externe Beleuchtung AN", 
	"",
	{

		[5, [], {

			["op1ext",true] remoteExec ["FNC_PAX_Lights", 2];

		}, {systemChat "Die Aktion wurde unterbrochen";}, "Schalte Beleuchtung AN"] call ace_common_fnc_progressBar;

	}, 

	{true}

] call ace_interact_menu_fnc_createAction;

fob1_helipad_lights_off = [
	"", 
	"Schalte externe Beleuchtung AUS", 
	"",
	{

		[5, [], {

			["op1ext",false] remoteExec ["FNC_PAX_Lights", 2];

		}, {systemChat "Die Aktion wurde unterbrochen";}, "Schalte Beleuchtung AUS"] call ace_common_fnc_progressBar;

	}, 

	{true}

] call ace_interact_menu_fnc_createAction;