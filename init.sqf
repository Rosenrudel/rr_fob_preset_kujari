//#include "core\devar.sqf"

if (isServer) then {

	[false,fob1HelipadLights] spawn ["FNC_PGS_Lights"];
	[false,fob1HelipadLandingLights] spawn ["FNC_PGS_Lights"];
	[false,fob1HelipadFloodLights] spawn ["FNC_PGS_Lights"];

};