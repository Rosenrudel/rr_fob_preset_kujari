//KEINE ANGST: Auskommentierte Zeilen werden nicht ins briefing abgedruckt!

//-----------------------------------------------------
//!!!WICHTIGE INFORMATION!!!
//Lieber Missionsbauer, bitte verstehe das dieses OPORD geschrieben wird, als ob du der Vorgesetzte des in deiner Mission leitenden Slots bist.
//Um dies zu unterstützen wird dieses Briefing in einem OPORD Format vorgliefert, welches normaler Weise einem Platoon Leader vor Übertragen eines Befehls vorgelegt wird.
//Mir ist zu diesem Zeitpunkt nur das Format des englischen Vorgehens bekannt und daher kann ich auch nur dieses Abbilden und erklären.
//Passe das Briefing jedoch gerne deinen persönlichen Wünschen an, versuche jedoch die spezifischen Bereiche des Verständnisses halber, einzuhalten.
//Es sollte nicht verwundern, das diese Version zu Spielerkunsten vom realen OPORD signifikant abweicht.
//-----------------------------------------------------
//
// Um Marker im briefing zu verwenden nutze:
// <marker name='markerObjectName'>OBJ Alpha</marker>
// Gehe sicher, dass das Equivalent von 'markerObjectName' als Marker auf der Karte von dir platziert wurde.
//
#include "x\briefingCore.sqf" //NICHT ENTFERNEN!
 
switch (side player) do { //NICHT ENTFERNEN!
 
    case west: //NICHT ENTFERNEN!
    { //NICHT ENTFERNEN!
	
		NEWTAB("Befehlsorganisation:")
		//Dieser Bereich ist noch NICHT Teil des OPORDS!
		//Der OPORD startet mit Punkt "I.Situation".
		//Dieser Tab ist dafür da die zu bespielende Einheit in Relation zur Ihren nächsten horizontalen und vertikalen Elementen zu bringen.
		//Dies ist wichtig für die Führung um den OPORD zu verstehen, sollte dieser mal etwas komplizierter werden.
		//Zusätzlich ist dies der Bereich in dem die sogenannten "Callsigns" verzeichnet sind.
		<br/><font color='#FFA500' size='16' face='PuristaBold'>Einheiten Organisation:</font> //z.B. C Kompanie (C/1-201-INF) => zum Verständnis Charlie Kompanie (Charlie/Erste Brigarde 201tes-Infanteriebattalion)
		//Selbst wenn die benachbarten Elemente fiktiv sind und nicht in der Mission genutzt werden, KANN eine solche Abbildung der Orientierung dienen.
		//Anbei ein Beispiel welches ihr löschen könnt
		<br/>Kompanie CO - C´6
		<br/>Kompanie XO - C´7
		<br/>1ter Infanterie-Zug - C´1
		<br/>2ter Infanterie-Zug - C´2 (<-DU)
		<br/>3ter Infanterie-Zug - C´3
		<br/>Unterstützungszug - C´4
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>Kompositionen und Positionen:</font>
		//Minimal solltet ihr klare Angaben über die momentane bzw. Ausgangsposition aller BESPIELTEN Elemente geben.
		//Solltet ihr verbündete KI platzieren, köönt ihr auch deren Position hier unterstützend zur Orientierung angeben.
		//Bitte markiert Freundpositionen mit deren Callsign immer mit einem Marker auf der Karte, sofern kein Blufor Tracking verfügbar ist. Dies Hilft.
		<br/>Charlie Kompanie HQ nicht bespielt
		<br/>C´1 nicht bespielt
		<br/>C´2 südlich von XYZ in RICHTUNG Osten
		<br/>C´3 nicht bespielt
		<br/>C´4 nicht bespielt
		<br/> 
		<br/><font color='#FFA500' size='16' face='PuristaBold'>Angegliederte Einheiten:</font>
		//Alle Slots oder Einheiten die von der originalen Einheiten Organisation abweichen, als entweder angegliedert oder an den Spieler entliehen wurden
		//Werden unter diesem Punkt aufgeführt. So z.B. ein entliehener JTAC oder Artelleriefunker.
		//Hier sollte sichtbar sein, voher diese Einheiten Stammen und mit welchem Callsign diese in der Mission erreichbar sind.
		<br/>(A/1-26 SUP) Joint Terminal Attack Controler - Topdown
		<br/>(E/2-65 MED) Medizinischer Versorgungstrupp - Lima Papa
		<br/> 
		<br/><font color='#FFA500' size='16' face='PuristaBold'>Angrenzende Einheiten:</font>
		//Hier geht es meist nur um Fiktion. Es werden Einheiten angegeben, welche in der selben Gegend operieren und entweder gleich groß oder größer als das bespielte Element sind.
		<br/>
		<br/>
		ENDTAB;

		NEWTAB("I. Situation:")
		//Folgend vor den Gebieten von Interesse, wird ein DETAILLIERTER Bericht der vorherrschenden Situation, sowie von vorherigen und wichtigen Ereignissen
		//Abgelegt in welchen die bespielte Einheit oder das gesamte Element dem die bespielte Einheit angehört, bis JETZT involviert waren.
		<br/>
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>a. Gebiete von Interesse:</font>
		//Unter Gebiete von Interesse, auf Kartenmarkern auch gerne AoI genannt, fallen alle der Einheit/dem Element bekannten Orte die wichtig für die Mission sind.
		//Zusätzlich wird für den Ort ein GRID angegeben und was genau diesen Ort interessant macht. Beispiel:
		// AoI A1: (8DigitGRID) | Beschreibung
		<br/>
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>b. Bereich der Operation:</font>
		//Folgend werden alle vorläufigen Informationen über den Bereich für den CO zusammengefasst.
		<br/>
		<br/><font color='#d21111' size='15'>1. Terrain:</font>
		//Sofern mit Geschichte und Ära deiner Mission vereinbar, kannst du hier Aufklärungsbilder der AO hinterlegen, z.B.: <img image='res\top.jpg' width='350' />
		<br/>
		<br/>
		<br/><font color='#d21111' size='15'>2. Wetter:</font>
		//Hier solltest du kurz die vorherschenden Wetterdaten einpflegen, sowie du Sie im Missionseditor eingestellt hast.
		<br/><font size='14'>AKTUELL:</font>
		<br/>Wind: Leicht/Mittel/Stark
		<br/>Regen: Leicht/Mittel/Stark
		<br/>Sonne: Leicht/Mittel/Stark
		<br/>Himmel: Klar/leicht Bewölkt/stark Bewölkt
		<br/>Nebel: Leicht/Mittel/Stark
		<br/>
		<br/><font size='14'>TAGESLICHT:</font>
		//Wie in den Missionsattributen eingestellt
		<br/>Alle Zeitangaben in lokaler Zeit
		<br/>Sonnenaufgang: hh:mm:ss
		<br/>Sonnenuntergang: hh:mm:ss
		<br/>Zeit zu Missionsbeginn: hh:mm:ss
		<br/>
		<br/><font size='14'>WETTERVORHERSAGE:</font>
		//Dem CO sollte unbedingt mitgeteilt werden, ob sich das Wetter über die nächsten Stunden ändern wird!
		<br/>
		<br/>
		<br/><font size='14'>MONDLICHT:</font>
		//Hier wird die Mondlichtintensivität mitgeteilt, basierend auf Mondstand, Lichtintensität und Wolken, dies kann essentiell für Nacht-Operationen sein!
		<br/>Operation bei Tageslicht/Mond stark beleuchtet und klarer Himmel/Mond schwach beleuchtet und stark bewölkt
		<br/>
		<br/><font size='14'>SICHTWEITE:</font>
		//Sandstürme, Nebel oder welcher Zustand auch immer, der die Sichtweite der bespielten Einheit einschränkt, sollte hier benannt und geschätzt werden.
		<br/>Klare Umgebung mit Sicht bis zum Horizont/Leichter Nebel - Sicht auf 300m beschränkt
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>c. Feindkräfte:</font>
		//Wenn möglich wird direkt hier ein Bild von Feindeinheiten hinterlegt und wie sich diese kleiden könnten.
		//<br/><img image='res\enemy.jpg' width='200' />
		<br/>
		<br/><font color='#d21111' size='15'>1. Disposition, Komposition und Truppenstärke:</font>
		<br/><font size='14'>DISPOSITION:</font>
		//Was genau ist zur Zeit über den Feind innerhalb des Operationsbereiches bekannt. Alle verfügbaren Informationen überfeindpositionen sind Teil der Disposition
		//und nur hier hinterlegt. Wenn du neue Feindinformationen irgendwo im Briefing hinterlegst, die hier nicht benannt wurden, ist die ein Fehler unterlaufen!
		//Alle Informationen sollten SEHR DETAILLIERT aufgeführt und erklärt werden, dies kann von essentieller Bedeutung für die Planung sein!
		//Gebiete von Interesse, sollten hier mit Ihrer AoI-Kodierung aus Punkt I.a (I. Situation->a. Gebiete von Interesse) hinterlegt werden.
		<br/>
		<br/>
		<br/><font size='14'>KOMPOSITION:</font>
		//Nach aktuellem Kenntnisstand, welche Kräfte, organisch oder angegliedert, sind dem Feind zur Unterstützung verfügbar?
		//ACHTUNG: Diese Info skaliert herunter bis zum Erwähnen einzelner Waffensysteme, sollten diese von Bedeutung sein (Fahrzeuge, MG-Stellungen, etc.)
		<br/>
		<br/>
		<br/><font size='14'>TRUPPENSTÄRKE:</font>
		//Versuche zu beschreiben wecleh und wie die Menge der Feind in und um das Einsatzgebiet herum die bespielte Einheit beeinflussen wird, sollte es zum Gefecht kommen.
		<br/>
		<br/>
		<br/><font color='#d21111' size='15'>2. Fähigkeiten:</font>
		//Erkläre mögliche feindliche Aktionen/Reaktionen, inkludiere signifikante Fähigkeiten selbst wenn diese unwahrscheinlich erscheinen.
		//Alle bekannten signifikanten Waffensysteme und wie diese eingesetzt werden könnten werden hier nocheinmal genauer bezeichnet.
		//Gibt es offensichtliche Schwächen in der Feindstruktur die wir ausnutzen können?
		<br/><font size='14'>MANEUVER:</font>
		<br/>Der Feind hat keine bekannten Möglichkeiten stark zu manövrieren und ist auf die Defensive konzentriert.
		<br/>
		<br/><font size='14'>FEUERUNTERSTÜTZUNG:</font>
		<br/>
		<br/>
		<br/><font size='14'>AUFKLÄRUNG:</font>
		<br/>Der Feind hat überlegene Kenntnisse des Terrains.
		<br/>
		<br/><font size='14'>MOBILITÄT:</font>
		<br/>
		<br/>
		<br/><font size='14'>LUFTABWEHR:</font>
		<br/>
		<br/>
		<br/><font size='14'>KAMPFMATERIALUNTERSTÜTZUNG:</font> //Hat der Feind Zugang zu sehr viel Munition oder kann Fahrzeuge reparieren?
		<br/>
		<br/>
		<br/><font color='#d21111' size='15'>3. Mögliche Feindaktionen bei Gefecht:</font>
		<br/><font size='14'>WAHRSCHEINLICHSTE FEINDREAKTION (MLCOA):</font>
		//Was wird der Feind höchstwahrscheinlich tun, wenn wir ihn angreifen.
		<br/>
		<br/>
		<br/><font size='14'>GEFÄHRLICHSTE FEINDREAKTION (MDCOA)</font>
		//Was wird das für uns gefährlichste sein, was der Feind tun könnte, wenn wir ihn angreifen.
		<br/>
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>d. Freundkräfte:</font>
		//Biete hier Identifikation in Form von Bildmaterial von allen befreundeten, neutralen oder allierten Kräften an, auf die man stoßen könnte.
		//<br/><img image='res\friendly.jpg' width='200' />
		<br/>
		ENDTAB;

		NEWTAB("II. Mission:")
		<br/><font color='#FFA500' size='16' face='PuristaBold'>Missionsintention:</font>
		//Hier findet die Darstellung der Mission aus deiner Sicht statt. WIE soll der CO seine Mission erreichen, WAS ist seine Mission und WAS sind die Bedingungen.
		//WICHTIG!!! Wenn die Mission so gestalltet wurde, das mehrere Elemente (z.B. Platoons) und dem leitenden Offizier (Kompanieführer) bespielten werden, für welchen dieses
		//Briefing ja erstellt wurde, kommen deren Missionen ebenfalls in diesen Abschnitt. II. Mission und III. Ausführung müssen dann entsprechend angepasst werden.
		<br/>
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>Objectives:</font>
		//Definiere bestimmte Objektives an denen der CO mit dem bespielten Element besondere Aktionen ausführen MUSS.
		<br/><font color='#d21111' size='15'>ORP C´2</font>
		<br/>- Establish safety parameter and prepare to move into Bastam North.
		<br/>
		<br/><font color='#d21111' size='15'>Bastam North</font>
		<br/>- Establish base of fire as necessary 
		<br/>
		<br/><font color='#d21111' size='15'>Objective Rosalind</font>
		<br/>- Seize the objective of all enemy forces (except when IDAP HQ is occupied by enemies).
		<br/>- Establish east and south route blocking positions using the cities buildings.
		<br/>- Protect the IDAP HQ
		ENDTAB;

		NEWTAB("III. Ausführung:") //NICHT LÖSCHEN!
		<br/> Dieser Abschnitt soll dem spielenden CO helfen, seinen Plan zu koordinieren, als Gedankenstütze dienen und sicherstellen, das nichts wichtiges übersehen wird.
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>a. CO Intention:</font>
		//Dieser Reiter ist ein Leitfaden für den spielenden CO, wie er II. Mission umsetzen möchte.
		<br/>- WELCHE Ziele willst du erreichen und WARUM? Denk daran das der Missionsbauer alle Ziele die deine Einheit oder deine Elemente erreichen sollen unter II. Mission definiert hat.
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>b. Konzept der Operationen</font>
		<br/>- In chronologischer Reihenfolge, WELCHE Einheiten, sollen WIE vorgehen und WAS erreichen?
		<br/>- Definiere WANN, WELCHE Einheiten Manöver durchführen sollen.
		<br/>- Definiere Phasen deiner Operation, die mit den Vorgaben deiner Führung übereinstimmen oder diese Ergänzen.
		<br/>- Vergiss nicht das du bestimmte Vorgehensweisen auf der Breifingkarte einzeichnen kannst. Visuelle Hilfen sind die besten.
		<br/>
		<br/><font color='#d21111' size='15'>1. Manöver</font>
		<br/>- Bespreche mit deinem Führungspersonal WIE vorgegangen wird.
		<br/>
		<br/><font color='#d21111' size='15'>2. Artilleriefeuer</font>
		<br/><font size='14'>NUTZEN UND GRUND:</font>
		<br/>- Welche Salven sollen WANN und WO vorgebrieft abgefeuert werden.
		<br/>
		<br/><font size='14'>PRIORITÄT:</font>
		<br/>- Welches Element hat Vorrang beim Anfordern von Artillerieunterstützung
		<br/>
		<br/><font size='14'>ALLOKATION:</font>
		<br/>- Wo ist die Artellerieunterstützung positioniert, wer kommandiert diese und wie ist der Feuerunterstützungsoffizier über Funk zu erreichen?
		<br/>
		<br/><font size='14'>RESTRIKTIONEN/SPEZIALMUNITION:</font>
		<br/>- Hat der Feuerunterstützungsoffizier oder Missionsbauer Restriktionen erstellt wohin nicht gefeuert werden soll oder welche Munition verwendet wird?
		<br/>
		<br/><font color='#d21111' size='15'>3. Aufklärung und Überwachung:</font>
		<br/>- WIE soll verfügbare Technik wie UAVs etc eingesetzt werden und WANN?
		<br/>
		<br/><font color='#d21111' size='15'>4. Informationen:</font>
		<br/>- WAS ist zu tun, wenn deine Elemente über neue Informationen stolpern oder die Aufklärung neue Informationen bereitstellt, WER wird als erstes informiert?
		<br/>
		<br/><font color='#d21111' size='15'>5. Engineering:</font>
		<br/><font size='14'>NUTZEN UND PRIORITÄT:</font>
		<br/>- WIE gedenkst du deine Techniker/Ingenieure/EODs einzustzen und WER hat Anfragepriorität?
		<br/>
		<br/><font size='14'>ALLOKATION:</font>
		<br/>- WO sind die Ingenieure die ganze Operation über anzutreffen, WER kommandiert sie und WIE sind diese über das Funknetz erreichbar?
		<br/>
		<br/><font size='14'>RESTRIKTIONEN:</font>
		<br/>- WAS dürfen die Techniker/EODs NICHT machen? z.B. IEDs in bewohnten Gebieten per Detonation entsorgen.
		<br/>
		<br/><font color='#d21111' size='15'>6. Flugabwehr:</font>
		<br/>- Hast du Flugabwehr unter deiner Kontrolle? Wenn ja, WO ist diese anzufinden, WER kommandiert sie, WIE ist dieser zu erreichen?
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>c. Manöverbefehle an untergebene Einheiten:</font>
		<br/><font color='#d21111' size='15'>1. 2nd Platoon of Charlie Company:</font>
		<br/>- Erwünschte Aktion der Elemente bei Bewegungspause (Sicherung+Abstand+Meldung in dich oder deinen 2IC)
		<br/>- Gibt es für einige deiner Einheiten alternative Routen, sollte sich eine als unbrauchbar erweisen? Markiere diese auf der Karte.
		<br/>- Markiere die Ausrückposition und markiere eine LOD (Ausrücklinie)
		<br/>- Markiere, falls nicht vom Missionsbauer vorgegeben, einen ORP (Operationssammelpunkt) circa 500m vor der Ausrücklinie
		<br/>- Definiere WIE deine Einheiten in Gefahrenbereichen oder beim Auffinden einer solchen vorgehen sollen (In der Regel Inspizieren und weiträumig umgehen)
		<br/>- Definiere WIE deine Einheiten vorgehen sollen, wenn Sie in ein Feuergefecht verwickelt werden. (In der Regel: Feuerüberlegenheit herstellen, Ziele Fixieren, Ziele via Manöver eliminieren)
		<br/>- Wenn deine Operation zusammenzubrechen droht, die Führungsabfolge zusammenbricht oder der Funk ausfällt, wohin sollen sich deine Einheiten zurückziehen?
		<br/>- Definiere welche Ziele von den Unterstützungseinheiten wie bekämpft werden sollen.
		<br/>- Definiere Ziele/Gebiete mit besonderer Priorität als TRPs auf der Karte, damit die Artellerie schneller wirken kann.
		<br/>- Definiere besondere Feuersektoren, die von schweren Waffen gedeckt werden sollen.
		<br/>- WO und WANN wird WER über WAS speziell gebrieft werden?
		<br/>- WANN möchtest du das deine Einheiten WELCHE Reports unaufgefordert zu dir senden? (Z.B. nach einer Kampfhandlung, bei Feindsichtung etc.)
		<br/>- Definiere deine Rules of Engagement: WANN auf WAS schießen/nicht schießen
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>d. Manöverbefehle an Unterstützungseinheiten:</font>
		<br/>- WELCHE Unterstützungstruppen (medizinisch, technisch, logistisch) sollen WO, WAS machen?
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>e. Koordinationsinstruktionen:</font>
		<br/>- WO soll von WEM medizinischen Unterstützung angefordert werden? WIE erfolgt der Transport?
		<br/>- WO sollen Verletztensammelpunkte eingerichtet werden?
		<br/>- WIE soll mit improvisierten Spreng- und Brandvorrichtungen umgegangen werden?
		ENDTAB;

		NEWTAB("IV. Service und Support:") // Ab hier pflegt der MISSIONSBAUER wieder fleißig Vorgaben ein!
		<br/><font color='#FFA500' size='16' face='PuristaBold'>a. Versorgungskonzept:</font>
		//Wo befindet sich Ausrüstung, Munition und andere Technik?
		//Wo ist der Evakuierungspunkt bzw der Ort wo der CO seine Verletzten von der Verletztsammelstelle hinevakuieren kann?
		//Wie sind die EInheiten zu erreichen und welchen Vorgaben muss Folge geleistet werden?
		<br/>
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>b. Material und Dienstleistungen:</font>
		<br/><font color='#d21111' size='15'>1. Ausrüstung:</font>
		<br/>
		<br/>b. Class II: Kleidung and individuelle Ausrüstung
		<br/>//Informationen einpflegen
		<br/>c. Class III: POL (Treibstoff)
		<br/>//Informationen einpflegen
		<br/>d. Class IV: Konstruktions-/Baumaterial
		<br/>//Informationen einpflegen
		<br/>e. Class V: Munition
		<br/>//Informationen einpflegen
		<br/>g. Class VII: Major End Ausrüstung
		<br/>//Informationen einpflegen (spezielle Ausrüstung wie z.B. Claymores, Minen, Einmalpanzerabwehrwaffen)
		<br/>h. Class VIII: Medizinische Ausrüstung
		<br/>//Informationen einpflegen
		<br/>i. Class IX: Reperatur
		<br/>//Informationen einpflegen
		<br/>k. Method der Versorgungsausteilung
		<br/>//Informationen einpflegen (Wer ist dafür verantwortlich, wo ist dieser zu finden, wie zu erreichen?)
		<br/>
		<br/><font color='#d21111' size='15'>2. Transport:</font>
		<br/>//Informationen einpflegen
		<br/>
		<br/><font color='#FFA500' size='16' face='PuristaBold'>c. Medizinische Evakuierung:</font>
		<br/><font color='#d21111' size='15'>1. Aktionen bei Feind oder Zivilverwundung:</font>
		<br/>Entwaffnen, Ersthilfe leisten, zur Verwundetensammelstelle evakuieren.
		<br/>
		<br/><font color='#d21111' size='15'>2. Aktion bei Freundverwundung:</font>
		<br/>Gebiet sichern/Feuerkampf gewinnen, Ersthilfe leisten, zur Verwundetensammelstelle evakuieren.
		<br/>
		ENDTAB;

		NEWTAB("V. Command & Signal:")
		//Hier ist einzutragen, welche Einheiten auf welchen Netzen unterwegs sind. Die jewiligen Funkkennungen sind ganz zu Beginn in der Einheitenorganisation festgelegt worden
		//hier erfolgt lediglich die Festlegung der Netze an die sich der leitende Spieler zu halten hat.
		<br/><font color='#FFA500' size='16' face='PuristaBold'>a. Führung:</font>
		<br/><font color='#d21111' size='15'>1. Aufenthaltsort des Kommandohauptquartieres.</font>
		<br/>//Informationen einpflegen
		<br/><font color='#d21111' size='15'>2. Aufenthaltsort von Kernpersonal während aller Pahsen der Operation, während Bewegungen am Operationssammelpunkt und dem Einsatzziel.</font>
		<br/>//Informationen einpflegen
		<br/><font color='#d21111' size='15'>3. Nachfolge der Kommandoführung</font>
		<br/>//Links nach rechts in Abstufung.
		<br/><font color='#FFA500' size='16' face='PuristaBold'>b. Signale:</font>
		<br/><font color='#d21111' size='15'>1. Signal Operating Instructions Index in effect:</font>
		<br/> Callsigns wie in der Einheitenorganisation festgelegt!
		<br/>
		//Ab hier das Beispiel einfach editieren - aufpassen das die Überschriften nicht gelöscht werden!
		<br/><font size='14'>Short Range Radio Nets:</font>
		<br/>
		<br/>1st Platoon (C/2-330 INF):
		<br/> SR 6 Block 1 - Plt HQ
		<br/> SR 1 Block 1 - 1st Infantry Squad
		<br/> SR 2 Block 1 - 2nd Infantry Squad
		<br/> SR 3 Block 1 - 3rd Infantry Squad
		<br/> SR 4 Block 1 - Weapons Squad
		<br/>
		<br/>2nd Platoon (C/2-330 INF):
		<br/> SR 6 Block 2 - Plt HQ
		<br/> SR 1 Block 2 - 1st Infantry Squad
		<br/> SR 2 Block 2 - 2nd Infantry Squad
		<br/> SR 3 Block 2 - 3rd Infantry Squad
		<br/> SR 4 Block 2 - Weapons Squad
		<br/>
		<br/>3rd Platoon (C/2-330 INF):
		<br/> SR 6 Block 3 - Plt HQ
		<br/> SR 1 Block 3 - 1st Infantry Squad
		<br/> SR 2 Block 3 - 2nd Infantry Squad
		<br/> SR 3 Block 3 - 3rd Infantry Squad
		<br/> SR 4 Block 3 - Weapons Squad
		<br/>
		<br/>Heavy Weapons Platoon (C/2-330 INF):
		<br/> SR 6 Block 4 - Plt HQ
		<br/> SR 1 Block 4 - 1st Weapons Squad
		<br/> SR 2 Block 4 - 2nd Weapons Squad
		<br/> SR 3 Block 4 - 3rd Weapons Squad
		<br/> SR 4 Block 4 - 4th Weapons Squad
		<br/>
		<br/>Attachments:
		<br/> SR 9 Block 5 - (A/1-26 SUP) Tactical Air Control Party - Topdown
		<br/> SR 3 Block 5 - (C/4-33 ART) Fire Support Team - Ironhammer
		<br/> SR 6 Block 5 - (E/2-65 MED) Ambulance Squad - Lima Papa
		<br/>
		<br/><font size='14'>Long Range Radio Nets:</font> 
		<br/>
		<br/>C Company (C/2-330 INF):
		<br/> LR 1 - 1st PLT NET
		<br/> LR 2 - 2nd PLT NET
		<br/> LR 3 - 3rd PLT NET
		<br/> LR 4 - 4th PLT NET
		<br/> LR 5 - EMPTY
		<br/> LR 6 - COY NET
		<br/> LR 7 - CAS NET
		<br/> LR 8 - MEDEVAC NET
		<br/> LR 9 - FIRES NET
		<br/>
		<br/><font color='#d21111' size='15'>2. Codewords:</font>
		//Anpassen! falls nicht benutzt, leeren, aber nicht löschen
		<br/>red angle = enemy occupied IDAP HQ
		<br/>black garden = Location with multiple connected IEDs
		<br/>united panic = mass casualty event
		<br/>broken pipe = immediate retreat of all forces to previous phase
		<br/>
		<br/><font color='#d21111' size='15'>5. Challenge and Password:</font>
		//Anpassen! falls nicht benutzt, leeren, aber nicht löschen
		<br/>C: Marco P: Polo
		<br/>
		<br/><font color='#d21111' size='15'>6. Nummerkombination:</font>
		//Anpassen! falls nicht benutzt, leeren, aber nicht löschen
		<br/>1464
		<br/>
		<br/><font color='#d21111' size='15'>7. Signalerkennung:</font>
		//Anpassen! falls nicht benutzt, leeren, aber nicht löschen
		<br/>Rote/Orange Flare = Feindposition (ausgebracht Richtung Feind)
		<br/>Weißer Rauch = Deckung 
		<br/>Grüne Flare = Freundposition (ausgebracht Richtung Freund)
		<br/>Gelbe Flare = Dringende Verwundetenversorgung benötigt (ausgebracht Richtung Freund)
		<br/>
		ENDTAB;
 
    }; //Ende briefing Blufor
	case east: //NICHT ENTFERNEN!
    { //NICHT ENTFERNEN!
	
		//Füge hier z.B. ein briefing nach obigem Format ein
		//Wenn Spieler auf OPFOR Seite ein briefing haben sollen
	
	}; //Ende briefing Opfor
	case resistance: //NICHT ENTFERNEN!
    { //NICHT ENTFERNEN!
	
		//Füge hier z.B. ein briefing nach obigem Format ein
		//Wenn Spieler auf INDFOR Seite ein briefing haben sollen
	
	}; //Ende briefing Indfor
	case civilian: //NICHT ENTFERNEN!
    { //NICHT ENTFERNEN!
	
		//Füge hier z.B. ein briefing nach obigem Format ein
		//Wenn Zivilisten Spieler aein briefing haben sollen
	
	}; //Ende briefing Indfor
 
}; //Ende des Briefingbereiches der Seiten abhängig ist. Was auch immer Ihr hier hinter schreibt wird für alle Spieler, egal welcher Seite, sichtbar sein.
		
		NEWTAB("VI. Missionsnotizen:")
		<br/><font color='#FFA500' size='15'>WICHTIGES:</font>
		<br/>
		<br/>//immer ein <br/> Abstand zur nächsten Überschrift halten!
		<br/><font color='#FFA500' size='15'>NOTIZEN:</font>
		<br/>
		ENDTAB;

DISPLAYBRIEFING();