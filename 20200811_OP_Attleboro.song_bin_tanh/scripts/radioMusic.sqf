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

_radio addAction["<t color='#ff471a'>What's That Sound?<\t>", {
	params["_target"];
	["stopChildren", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#0000b3'>House of the Rising Sun<\t>", {
	params["_target"];
	["house", _target] remoteExec ["PlayUserSound", 0, true];
}];
