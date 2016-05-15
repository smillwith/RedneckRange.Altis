/*
addAction

[https://community.bistudio.com/wiki/addAction]

object addAction [title, script, arguments, priority, showWindow, hideOnUse, shortcut, condition, positionInModel, radius, radiusView, showIn3D, available, textDefault, textToolTip]

this addAction ["Advance Time 1 hour", "skiptime.sqf", nill, 1.5, true, ];
this addAction ["Enable Chemlights", "bEnableChemlights = 1"];
[this, "Skip Time 1 Hour", "skiptime.sqf", true] call dingus_fnc_addBasicAction;
[this, "Chemlights On", "bEnableChemlights = 1", !bEnableChemlights] call dingus_fnc_addBasicAction;
[this, "Chemlights Off", "bEnableChemlights = 0", bEnableChemlights] call dingus_fnc_addBasicAction;
*/

dingus_fnc_addBasicAction = {
  _obj = _this select 0;
  _text = _this select 1;  //display text of the action
  _script = _this select 2; //script to run
  _cond = _this select 3; //condition that enables the action

  _args = [];  /*arguments*/
  _priority = 1.5; /*priority,*/
  _showWindow = false; /* showWindow */
  _hideAfter = true; /* hideOnUse (true)*/
  _shortcut =""; /* shortcut ("")*/

  _obj addAction [
    _text,
    _script,
    _args,
    _priority,
    _showWindow,
    _hideAfter,
    _shortcut,
    _cond
  ];
};

