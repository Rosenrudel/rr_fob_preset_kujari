#include "core\devar.sqf"

if (isServer) then {

	[false,fob1HelipadLights] remoteExec ["FNC_PGS_Lights",2];
	[false,fob1HelipadLandingLights] remoteExec ["FNC_PGS_Lights",2];
	[false,fob1HelipadFloodLights] remoteExec ["FNC_PGS_Lights",2];

};