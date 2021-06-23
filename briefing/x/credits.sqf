private ["_info_ofw"];
private ["_info_brf"];

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
Altered into current state by user Pax_Jarome.
";
player createDiaryRecord ["Cr_Menu", ["BRFSRC", _info_brf]];