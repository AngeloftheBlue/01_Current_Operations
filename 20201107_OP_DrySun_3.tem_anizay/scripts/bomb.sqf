hint format ["Hello, American"];
sleep 5;
hint format ["I've been watching you. You've found my office"];
sleep 5;
hint format ["You just missed me, I have an important job to do today and can't be late."];
sleep 5;
hint format ["And it is time you go too. But not where i'm going. hehe Tick Tick Tick"];
sleep 10;

scriptedCharge = "DemoCharge_Remote_Ammo_Scripted" createVehicle (getMarkerPos "bombmrk");
scriptedCharge setDamage 1;