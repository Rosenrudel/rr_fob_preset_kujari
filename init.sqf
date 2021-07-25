#include 

FNC_PAX_Lights = compile preprocessFileLineNumbers "misc/lightsSRV.sqf";

if (isServer) then {

	["init",false] remoteExec ["FNC_PAX_Lights"];

};