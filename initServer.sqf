#include "core\devar.sqf"
#include "L_ambiDrive\init.sqf"
#include "L_ambiCivs\init.sqf"

if (!debugModeOn) then {
	PGS_defaultTransportTime = PGS_debugOffDefaultTransportTime;
} else {
	PGS_defaultTransportTime = PGS_debugOnDefaultTransportTime;
};