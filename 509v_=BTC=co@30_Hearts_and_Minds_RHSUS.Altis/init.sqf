// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

enableSaving [true, false];

if (hasInterface) then {btc_intro_done = [] spawn btc_fnc_intro;};

[] call compile preprocessFileLineNumbers "core\def\mission.sqf";
[] call compile preprocessFileLineNumbers "define_mod.sqf";

if (isServer) then {
    [] call compile preprocessFileLineNumbers "core\init_server.sqf";
};

[] call compile preprocessFileLineNumbers "core\init_common.sqf";

if (!isDedicated && hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_player.sqf";
};

if (!isDedicated && !hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_headless.sqf";
};

//Exec Vcom AI function
[] execVM "Vcom\VcomInit.sqf";
//End of Vcom commands


//////////////////////View Distance Settings///////////////////////////////////////////////////////////////////////////////////////////

CHVD_allowNoGrass = false;
CHVD_maxView = 5000;
CHVD_maxObj = 5000;

////////////////Anit Cheat/////////////////////////////////////////////////////

/////////////////////Admin and cheat mods
if (["KA_proving_ground",
	"NSS_Admin_Console",
	"MGI_TP_V3",
	"MGI_TG",
	"XEDOM_AdminTool",
	"SSPCM",
	"Revo_DC", 
	"mcc_sandbox",
	"mcc_sandbox_curatorExp",
	"sn_backpack_air",
	"sn_backpack_tt",
	"sn_backpack_sw",
	"SPCONTROLMOD",
	"targetedBUGHANDLER",
	"TPW_HUD"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
	["AdminMod", false, 2] call BIS_fnc_endMission;};

    //Mods banned off the Server
if (["tf47_launchers",
	"ravage",
	"BloodSplatter",
	"BloodlustLITE_Auto",
	"BloodSplatterLITE",
	"AACC",
	"KA_Suitcase_Nuke",
	"hlcweapons_M134",
	"achilles_data_f_achilles",
	"gpn18",
	"tfa_facewear",
	"bullet_cases"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
		["RestrictedMods", false, 2] call BIS_fnc_endMission;};

//arsenal Block
if (["PA_arsenal",	
	"VAS_Diag",
	"Gear_Loadout", 
	"KA_VAA",
	"vaa_arsenal",
	"nks_arsenal",
	"IA_ACE_VAA",
	"Lordeath_arsenal",
	"Roys_Arsenal"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
	["ArsenalMod", false, 2] call BIS_fnc_endMission;};

///////////////////////////Remove Shack Tac vis////////////////////////////////////////////////

STGI_Update = {}; 
STNT_Update ={};

///////////////////////////Damage Disabled Area////////////////////////////////////////////////
//Ships Trucks Car Tanks

SA_MAX_TOWED_CARGO = 4;
SA_TOW_SUPPORTED_VEHICLES_OVERRIDE = [ "Air", "Ship", "Tanks","Car" ];
SA_TOW_RULES_OVERRIDE = [
	["Tank","CAN_TOW","Tank"],
	["Tank","CAN_TOW","Car"],
	["Tank","CAN_TOW","Ship"],
	["Tank","CAN_TOW","Air"],
	["Car","CAN_TOW","Tank"],
	["Car","CAN_TOW","Car"],
	["Car","CAN_TOW","Ship"],
	["Car","CAN_TOW","Air"],
	["Ship","CAN_TOW","Tank"],
	["Ship","CAN_TOW","Car"],
	["Ship","CAN_TOW","Ship"],
	["Ship","CAN_TOW","Air"],
	["Air","CAN_TOW","Tank"],
	["Air","CAN_TOW","Car"],
	["Air","CAN_TOW","Ship"],
	["Air","CAN_TOW","Air"]
];

ASL_SLING_RULES_OVERRIDE = [
	["Air", "CAN_SLING", "Air"], 
	["Air", "CAN_SLING", "Ship"],
	["Air", "CAN_SLING", "Tanks"], 
	["Air", "CAN_SLING", "Car"]
]; 



///////////////////////////Tow Artillery////////////////////////////////////////////////
attachgun = {
 _vehicles = nearestObjects [_this, ["Car","Truck"], 8];
 if (count _vehicles==0) then {
  hint format ["No vehicle within 3 meters."];
 } else {
  if (_this doorPhase 'fold_arty' == 1) then {
   _this attachto [(_vehicles select 0),[0,-5,-2.5]];
   removeAllActions _this;
   _this addAction["Detach from truck",{(_this select 0) call detachgun;},[],1.5,true,true,"","true",3];
  } else {
   hint format ["Gun is not folded, can't attach"];
  };
 };
};

detachgun = {
 if (_this doorPhase 'fold_arty' == 1) then {  
detach _this;
  removeAllActions _this;
  _this addAction["Attach to truck",{(_this select 0) call attachgun;},[],1.5,true,true,"","true",3];
 } else {
  hint format ["Gun is not folded, can't detach"];
 };
};

