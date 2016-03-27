_inc     = 0;  //increment
_count   = 0;  
_number  = 20; //number of targets to show in a round
_targets = [pt3, pt3_1, pt3_2, pt3_3, pt3_4, pt3_5, pt3_6, pt3_7, pt3_8, pt3_9];
//_many    = count _targets;
nopop    = true;

hint "Setting up the targets...";

//Hides all targets
{_x  animate["terc",1]} forEach _targets;
sleep 2;

//hint "Ready";
["Get Ready!",0 , 0.035 * safezoneH + safezoneY, 5, 0.3] spawn BIS_fnc_dynamicText;

sleep 3;

//For each target 'round'...
while {_inc < _number} do 
{
  //Show a random target
  _rtarget = _targets select floor random count _targets;
  _rtarget animate["terc", 0];

  //Wait three seconds
  sleep 3;

  //Did they hit the target during that time?
  if (_rtarget animationPhase "terc" > 0.1) then
  {
      _count = _count + 1;
  };

  //Show them how many they've hit
  hint format ["Targets :%1 Hit :%2",_inc+1,_count];

  //Put the target back down
  _rtarget animate["terc", 1];

  //Increment our 'rounds' counter
  _inc = _inc + 1;
};

//Wait 5 seconds
sleep 5;

//Show their score
if (_count == _number) then {
  ["Perfect! You got them all!", 0, 0.035 * safezoneH + safezoneY, 5, 0.3] spawn BIS_fnc_dynamicText;
} else {
  hint "Session Complete";
};

//Puts all targets back up
{_x  animate["terc",0]} forEach _targets;

//Re-enables pop-ups so they work like normal
nopop = false;
