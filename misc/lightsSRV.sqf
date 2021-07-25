///////////////////////////////////////////////////////////////////////////////////////////
//Script for switching lights from local addaction via ACE remoteexecuted on the server.
//params: [_execution = where and what to execute | _setTo = which state should the light have?]
//By Pax
///////////////////////////////////////////////////////////////////////////////////////////
params [
	"_execution","_setTo"
];

switch (toLower _execution) do {
	
	case "init": {

		if (isServer) then {

			{

				[_x, false] remoteExec ["BIS_fnc_switchLamp"];
				
			} forEach fob1_helipad_lights;
		
		};

	};

	case "fob1": {

		if (isServer) then {
			
			{
			
				[_x, _setTo] remoteExec ["BIS_fnc_switchLamp"];

			} forEach dummy;

		};

	};

};