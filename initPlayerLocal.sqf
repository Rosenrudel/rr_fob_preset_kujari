// waitUntil {!(isNull player)}; //JIP proofing

execVM "lights.sqf";

if (player getVariable ["isSurvivor", false]) then {

	sleep 13;

	hintC "Ihr habt es irgendwie gerade noch so aus dem Inferno im Bug des Schiffes heraus geschafft! Andere waren leider nicht so glücklich!
		Als Ihr einen Blick Richtung Hangar werft wird euch jedoch schnell klar, dass Ihr die einzigen seit die noch an Bord sind...
		Sucht in den Kisten im Hangar nach einer 'Signalpistole' und macht so lange auf euch aufmerksam bis ein Super Puma der Niederländer euch abholt.
		Die Menge an übrigen Signalrakete ist begrenzt.
		Behaltet aber im Kopf, dass die Munition im Buggeschütz jederzeit zu einer gewaltigen Explosion führen könnte!"

};