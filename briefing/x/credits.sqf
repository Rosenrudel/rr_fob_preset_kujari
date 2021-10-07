#include "..\..\core\devar.sqf"

player createDiarySubject ["Cr_Menu", "Credits"];

_info_ofw = "
This mission briefing is using parts of the Olsen Framework.<br/>
Thanks you for providing this to the Arma Community.
<br/>
github.com/dklollol/Olsen-Framework-Arma-3<br/>
";
player createDiaryRecord ["Cr_Menu", ["OFW3", _info_ofw]];

_info_brf = "
This mission briefing was originally made by user Perfk.<br/>
Altered into current state by user Pax_Jarome.<br/>
";
player createDiaryRecord ["Cr_Menu", ["BRFSRC", _info_brf]];

_info_lac = "
Thanks to LAxemann for providing:<br/>
github.com/LAxemann/L_ambiCivs<br/>
";
player createDiaryRecord ["Cr_Menu", ["L_ambiCivs", _info_lac]];

_info_lad = "
Thanks to LAxemann for providing:<br/>
github.com/LAxemann/L_ambiDrive<br/>
";
player createDiaryRecord ["Cr_Menu", ["L_ambiDrive", _info_lad]];