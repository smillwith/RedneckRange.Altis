execVM "actionHelper.sqf";
execVM "shiptargets.sqf";

//Set Darkness
_hoursToskip = ["darkness", -1] call BIS_fnc_getParamValue;
skiptime _hoursToskip;

//Sit Init
//this addAction ["Sit Down","sitdown.sqf", [], 1.5, false, true, "true"];
MAC_fnc_switchMove = {
  private["_object","_anim"];
  _object = _this select 0;
  _anim = _this select 1;

  _object switchMove _anim;
};


if(true) exitWith {}; 
  
