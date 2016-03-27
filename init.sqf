execVM "actionHelper.sqf";

//Set Darkness
_hoursToskip = ["darkness", -1] call BIS_fnc_getParamValue;
skiptime _hoursToskip;

//Disable Save
enableSaving [false, false];

if(true) exitWith {}; 