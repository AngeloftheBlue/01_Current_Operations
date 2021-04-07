//nul = execVM "T-72 Group.sqf";
//this addaction ["spawn AI", "T-72 Group.sqf"];

//_crew1 = [];

//_airframe1 = [];

//_crew1 = creategroup WEST;
//_airframe1 = [getMarkerPos "marker34", bearing, "vehicle classname", _crew1] call BIS_fnc_spawnVehicle;
_team1 = [];


if (isServer) then {
_team1 = [getmarkerpos "marker_34", east, ["rhs_t72bb_tv"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team1 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "AWARE";
    _wp1 setWaypointFormation "LINE";
	
};

//_wp1 = _crew1 addWaypoint [getmarkerpos "wp1_3", 0];
//	_wp1 setWaypointType "TR UNLOAD"; 
//	_wp1 setWaypointSpeed "FULL";
//	_wp1 setwaypointstatements ["this land 'land'"];

//_mygroup = [getmarkerpos "EXAMPLE VARIABLE NAME", Side, ["Class_Name"],[],[],[],[],[],Spawn bearing] call BIS_fnc_spawnGroup;
//_wp1a = _mygroup addWaypoint [getmarkerpos "wp1_3", 0];

//sleep x;
//_mygroup = _mygroup;
//{_x assignAsCargo (_airframe1 select 0); _x moveInCargo (airframe1 select 0);} foreach units _mygroup;
// add }; at the end