///////////////////////////////////////////////////////////////////////////////////////////
//Script for moving the FOB Black Hawk from local addaction via ACE remoteexecuted on the server.
//params: [_object = Which vehicleObject?] [_target = objectName of target or a 3D positional array]
//By Pax
///////////////////////////////////////////////////////////////////////////////////////////
#include "..\core\devar.sqf"

params [
	["_object", nil, [objNull]], ["_target", nil, [objNull]], ["_heading", nil, [0]]
];

//_object setDir _heading;
[_object, _heading] remoteExec ["setDir", 0];
sleep 0.1;
[_object,_target] call CBA_fnc_setPos;