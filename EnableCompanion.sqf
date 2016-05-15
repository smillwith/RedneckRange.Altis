// Allows a unit to join the player's group and be dismissed from the group
// Usage: UNIT execVM "EnableCompanion.sqf";
// Eg. nul = this execVM "EnableCompanion.sqf";

//_target is the AI unit

//Action "Join My Group"
//Condition: I am not being played? I am not in your group already?
_this addAction ["Join My Group", { _leader = _this select 1; _subordinate = _this select 0; [_subordinate] joinSilent (group _leader); }, [], 1.5, false, true, "", "_target != _this && ((group _target) != (group _this))"];

_this addAction ["You're dismissed", { _subordinate = _this select 0; _grp = createGroup west; [_subordinate] joinSilent _grp; }, [], 1.5, false, true, "", "vehicle _target != vehicle _this && ((vehicle _target) == _target) && ((group _target) == (group _this))"];

true;
