////////////////////////////////////////////////////////////////////////////////////////
//Place all variables which do not change often or are never expected to change in here!
////////////////////////////////////////////////////////////////////////////////////////

dummy = []; //dummy variable for personal convinience

//defines geydam static functions

FNC_PGS_Lights = compile preprocessFileLineNumbers "misc\lights.sqf";

//defines for misc\lights.sqf

fob1HelipadLights = nearestObjects [fob1_center_helipad, ["PortableHelipadLight_01_green_F"], 15];
fob1HelipadLandingLights = nearestObjects [fob1_center_helipad, ["PortableHelipadLight_01_white_F"], 50];
fob1HelipadFloodLights = nearestObjects [fob1_center_helipad, ["Land_PortableLight_02_single_folded_yellow_F"], 15];

//defines for misc\lightsAddAction.sqf

PGS_code_fob1HelipadLights_on = [
	"",
	"Schalte Helipad Beleuchtung AN", 
	"",
	{

		[5, [], {

			[true,fob1HelipadLights] remoteExec ["FNC_PGS_Lights", 2];

		}, {systemChat "Die Aktion wurde unterbrochen";}, "Einschalten..."] call ace_common_fnc_progressBar;

	}, 

	{true}

] call ace_interact_menu_fnc_createAction;

PGS_code_fob1HelipadLights_off = [
	"", 
	"Schalte Helipad Beleuchtung AUS", 
	"",
	{

		[5, [], {

			[false,fob1HelipadLights] remoteExec ["FNC_PGS_Lights", 2];

		}, {systemChat "Die Aktion wurde unterbrochen";}, "Ausschalten..."] call ace_common_fnc_progressBar;

	}, 

	{true}

] call ace_interact_menu_fnc_createAction;

PGS_code_fob1HelipadLandingLights_on = [
	"",
	"Schalte Helipad Navigationsbeleuchtung AN", 
	"",
	{

		[5, [], {

			[true,fob1HelipadLandingLights,true,false] remoteExec ["FNC_PGS_Lights", 2];

		}, {systemChat "Die Aktion wurde unterbrochen";}, "Einschalten..."] call ace_common_fnc_progressBar;

	}, 

	{true}

] call ace_interact_menu_fnc_createAction;

PGS_code_fob1HelipadLandingLights_off = [
	"", 
	"Schalte Helipad Navigationsbeleuchtung AUS", 
	"",
	{

		[5, [], {

			[false,fob1HelipadLandingLights,true,true] remoteExec ["FNC_PGS_Lights", 2];

		}, {systemChat "Die Aktion wurde unterbrochen";}, "Ausschalten..."] call ace_common_fnc_progressBar;

	}, 

	{true}

] call ace_interact_menu_fnc_createAction;

PGS_code_fob1HelipadFloodLights_on = [
	"",
	"Schalte Helipad Flutlichter AN", 
	"",
	{

		[5, [], {

			[true,fob1HelipadFloodLights] remoteExec ["FNC_PGS_Lights", 2];

		}, {systemChat "Die Aktion wurde unterbrochen";}, "Einschalten..."] call ace_common_fnc_progressBar;

	}, 

	{true}

] call ace_interact_menu_fnc_createAction;

PGS_code_fob1HelipadFloodLights_off = [
	"", 
	"Schalte Helipad Flutlichter AUS", 
	"",
	{

		[5, [], {

			[false,fob1HelipadFloodLights] remoteExec ["FNC_PGS_Lights", 2];

		}, {systemChat "Die Aktion wurde unterbrochen";}, "Ausschalten..."] call ace_common_fnc_progressBar;

	}, 

	{true}

] call ace_interact_menu_fnc_createAction;