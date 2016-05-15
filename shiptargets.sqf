
//Attach stuff to the trawler1
target1 = "TargetP_Inf_F" createVehicleLocal getPos trawler1; target1 attachTo [trawler1, [1, 8.2, 5.4]]; target1 setDir 180;
target2 = "TargetP_Inf_F" createVehicleLocal getPos trawler1; target2 attachTo [trawler1, [-1, 8.7, 5.4]]; target2 setDir 180;
target3 = "TargetP_Inf_F" createVehicleLocal getPos trawler1; target3 attachTo [trawler1, [0, -15.6, 6.0]]; target3 setDir 180;

//ladder1 = "Land_PierLadder_F" createVehicleLocal getPos trawler1; ladder1 attachTo [trawler1, [5, -4.8, -2]]; ladder1 setDir -90;

//Rotate the vehicle?
trawler1 setDir 160;
