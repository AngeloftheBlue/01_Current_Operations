/*
 *		RADIO MUSIC SCRIPT
 *
 *		Description: Adds some songs to a radio
 *
 *		Usage: [this, "scripts\radioMusic.sqf"] call BIS_fnc_execVM;
*/

params["_radio"];
ranOnce = false;

PlayUserSound = {
	params["_soundName", "_radio"];

	if (ranOnce) then {
		deleteVehicle soundPos;
	};
	ranOnce = true;
	if (_soundName != "Silent") then {
		soundPos = createVehicle ["Land_HelipadEmpty_F", getPos _radio, [], 0, "CAN_COLLIDE"];
		soundPos say3D [_soundName, 30];
	};
};

_radio addAction["<t color='#e60000'>Stop Sound</t>", {
	params["_target"];
	["Silent", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#ff471a'>Paint it, Black<\t>", {
	params["_target"];
	["black", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#0000b3'>You Can Never Tell<\t>", {
	params["_target"];
	["neverTell", _target] remoteExec ["PlayUserSound", 0, true];
}];
