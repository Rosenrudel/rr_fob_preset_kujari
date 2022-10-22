////////////////////////////////////////////////////////////////////////////////////////
//Place all variables which do not change often or are never expected to change in here!
////////////////////////////////////////////////////////////////////////////////////////

dummy = []; //dummy variable for personal convinience

//defines geydam static functions

FNC_PGS_moveBlacky = compileFinal preprocessFileLineNumbers "misc\moveBlacky.sqf";
FNC_PGS_Lights = compileFinal preprocessFileLineNumbers "misc\lights.sqf";

//defines for misc\lights.sqf

fob1HelipadLights = nearestObjects [fob1_center_helipad, ["PortableHelipadLight_01_green_F"], 15];
fob1HelipadLandingLights = nearestObjects [fob1_center_helipad, ["PortableHelipadLight_01_white_F"], 50];
fob1HelipadFloodLights = nearestObjects [fob1_center_helipad, ["Land_PortableLight_02_single_folded_yellow_F"], 15];

//defines for misc\moveBlacky.sqf

//defines for briefing\x\briefingCore.sqf

private ["_info_ofw"];
private ["_info_brf"];
private ["_info_lac"];
private ["_info_lad"];

//defines for DEBUG MODE

debugModeOn = true;
PGS_debugOnDefaultTransportTime = 5;
PGS_debugOffDefaultTransportTime = 120;

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

//defines for misc\techAddAction.sqf

PGS_code_fob1TransportBlackyToHangar = [
	"", 
	"Black Hawk >>> Hangar !VORSICHT!", 
	"",
	{

		[PGS_defaultTransportTime, [], {

			[rw_1,bhTransportHangarTarget,68] remoteExec ["FNC_PGS_moveBlacky", 2];

		}, {systemChat "Die Aktion wurde unterbrochen";}, "Der Transport dauert 2 Minuten..."] call ace_common_fnc_progressBar;

	}, 

	{true}

] call ace_interact_menu_fnc_createAction;

PGS_code_fob1TransportBlackyToHelipad = [
	"", 
	"Black Hawk >>> Helipad !VORSICHT!", 
	"",
	{

		[PGS_defaultTransportTime, [], {

			[rw_1,bhTransportHelipadTarget,340] remoteExec ["FNC_PGS_moveBlacky", 2];

		}, {systemChat "Die Aktion wurde unterbrochen";}, "Der Transport dauert 2 Minuten..."] call ace_common_fnc_progressBar;

	}, 

	{true}

] call ace_interact_menu_fnc_createAction;