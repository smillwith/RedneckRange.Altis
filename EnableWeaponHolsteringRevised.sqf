// Revised: Dingus 2016
// Original: MulleDK19 © 2014
// Allows holstering of weapons on player units. Works in multiplayer.
// Usage: UNIT execVM "EnableWeaponHolsteringRevised.sqf";
// Eg. player execVM "EnableWeaponHolsteringRevised.sqf";

if (!isPlayer _this) exitWith
{
    // Action makes no sense on AI units.
};

//Action "Hide binoculars"
//Condition: I am requesting my own action, I have a Binocular, my currentWeapon == (whatever my Binocular is), and I have either a primary weapon or handgun weapon assigned (because if I don't the game adds a menu for me automatically and I don't wan't to duplicate it);
_this addAction ["Hide binoculars*", {_unit = _this select 1; _unit action ["SwitchWeapon", _unit, _unit, 100];}, [], 1.5, false, true, "", "_this == _target && binocular _target != """" && currentWeapon _target == binocular _target && (primaryWeapon _target != """" || handgunWeapon _target != """")"];

//Action "Equip binoculars"
//Condition: I am requesting my own action, I'm not in a vehicle, I'm not currently holding my binoculars and I have binoculars of some sort.
_this addAction ["Equip binoculars*", {_unit = _this select 1; _unit selectWeapon binocular _unit;}, [], 1.5, false, true, "", "_this == _target && vehicle _target == _target && currentWeapon _target != binocular _target && binocular _target != """""];

//Action: "Hide weapon" (Primary)
//Condition: I am requesting my own action, I have a primary weapon and I'm currently holding my primary weapon.
_this addAction ["Hide weapon*", {_unit = _this select 1; _unit action ["SwitchWeapon", _unit, _unit, 100];}, [], 1.5, false, true, "", "_this == _target && primaryWeapon _target != """" && currentWeapon _target == primaryWeapon vehicle _target"];

//Action: "Hide weapon" (Launcher)
//Condition: I am requesting my own action, I have a secondary weapon and I'm currently holding my secondary weapon.
_this addAction ["Hide weapon*", {_unit = _this select 1; _unit action ["SwitchWeapon", _unit, _unit, 100];}, [], 1.5, false, true, "", "_this == _target && secondaryWeapon _target != """" && currentWeapon _target == secondaryWeapon vehicle _target  && (primaryWeapon _target != """" || handgunWeapon _target != """")"];

//Action: "Hide handgun"
_this addAction ["Hide handgun*", {_unit = _this select 1; _unit action ["SwitchWeapon", _unit, _unit, 100];}, [], 1.5, false, true, "", "_this == _target && handgunWeapon _target != """" && currentWeapon _target == handgunWeapon _target"];

true;
