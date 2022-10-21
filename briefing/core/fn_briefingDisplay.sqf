/* Author: Pax_Jarome

Diese Funktion inkludiert je nach Seite eines Spielers besser übersichtliche Dateien
in einem separaten Framework Ordner, welcher die jeweiligen Briefings enthält.
*/

#include "briefingCore.sqf"

switch (side player) do {
	case west: {
		if (fileExists "briefing\blufor.sqf") then {
			#if __has_include ("..\blufor.sqf")
			#include "..\blufor.sqf"
			#endif
		};
	};

	case east: {
		if (fileExists "briefing\opfor.sqf") then {
			#if __has_include ("..\opfor.sqf")
			#include "..\opfor.sqf"
			#endif
		};
	};

	case resistance: {
        if (fileExists "briefing\greenfor.sqf") then {
			#if __has_include ("..\greenfor.sqf")
			#include "..\greenfor.sqf"
			#endif
		};
    };

	case civilian: {
		if (fileExists "briefing\civfor.sqf") then {
			#if __has_include ("..\civfor.sqf")
			#include "..\civfor.sqf"
			#endif
		};
    };
};

if (fileExists "briefing\missionNotes.sqf") then {
	#if __has_include ("..\missionNotes.sqf")
	#include "..\missionNotes.sqf"
	#endif
};

DISPLAYBRIEFING();