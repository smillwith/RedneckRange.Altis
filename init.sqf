execVM "actionHelper.sqf";
<<<<<<< HEAD
execVM "shiptargets.sqf";
=======
>>>>>>> 9c359b1270486890c277391796c98a2c0e7aaaa7

//Set Darkness
_hoursToskip = ["darkness", -1] call BIS_fnc_getParamValue;
skiptime _hoursToskip;

<<<<<<< HEAD

//Sit Init
//this addAction ["Sit Down","sitdown.sqf", [], 1.5, false, true, "true"];
MAC_fnc_switchMove = {
  private["_object","_anim"];
  _object = _this select 0;
  _anim = _this select 1;

  _object switchMove _anim;
};


if(true) exitWith {}; 
  
=======
//Disable Save
enableSaving [false, false];

if(true) exitWith {}; 
>>>>>>> 9c359b1270486890c277391796c98a2c0e7aaaa7
