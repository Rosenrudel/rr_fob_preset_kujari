#include 

FNC_PAX_Lights = compile preprocessFileLineNumbers "misc\lights.sqf";

if (isServer) then {

	["init",false] remoteExec ["FNC_PAX_Lights"];

};