playMusic "CannonInD";

_bpm = 1.224;

_camera = "camera" camcreate [15599.7,12459.2,10.265];
_camera cameraeffect ["internal", "back"];

_camera camSetPos [15599.7,12459.2,10.265];
_camera camSetTarget [15599.1,12496.3,0.00143433];
_camera camCommit  _bpm*6;
waitUntil { camCommitted _camera};

_camera camSetPos [7792.55,2910.45,72.0524];
_camera camSetTarget [7677.47,2738.73,0.00143433];
_camera camCommit  0;
waitUntil { camCommitted _camera};
_camera camCommit  _bpm*6;
waitUntil { camCommitted _camera};

_camera camSetPos [3314.15,3387.31,0.00143433];
_camera camSetTarget [3451.27,3460.69,0.00143433];
_camera camCommit  0;
waitUntil { camCommitted _camera};
_camera camCommit  _bpm*6;
waitUntil { camCommitted _camera};

_camera camSetPos [4051.9,15441.8,66.7192];
_camera camSetTarget [3928.78,15558.7,20];
_camera camCommit  0;
waitUntil { camCommitted _camera};
_camera camCommit  _bpm*6;
waitUntil { camCommitted _camera};

_camera camSetPos [4286.58,15562.9,167.162];
_camera camSetTarget [3922.6,15493.2,0.00146484];
_camera camCommit  0;
waitUntil { camCommitted _camera};
_camera camCommit  _bpm*6;
titleText ["<t size='5'>Operation Big Bang</t>", "PLAIN DOWN", -1, true, true];
waitUntil { camCommitted _camera};
titleText ["<t size='3'>Created By<br/>Donov C.</t>", "PLAIN DOWN", -1, true, true];
_camera camCommit  _bpm*6;
waitUntil { camCommitted _camera};
titleText ["<t size='3'>With Support From<br/>The 509th PIR</t>", "PLAIN DOWN", -1, true, true];
_camera camCommit  _bpm*6;
waitUntil { camCommitted _camera};
titleText ["<t size='3'>Developed With<br/>The 509th Mission Framework</t>", "PLAIN DOWN", -1, true, true];
_camera camCommit  _bpm*3;
waitUntil { camCommitted _camera};
titleText ["<t size='2'>Dedicated MP Testing<br/>Angel<br/>Exile<br/>Kyle</t>", "PLAIN DOWN", -1, true, true];
_camera camCommit  _bpm*3;
waitUntil { camCommitted _camera};
titleText ["<t size='2'>Level Design<br/>Donov</t>", "PLAIN DOWN", -1, true, true];
_camera camCommit  _bpm*3;
waitUntil { camCommitted _camera};
titleText ["<t size='2'>Lead Programmer<br/>Donov</t>", "PLAIN DOWN", -1, true, true];
_camera camCommit  _bpm*3;
waitUntil { camCommitted _camera};
titleText ["<t size='2'>Storyboard<br/>Donov</t>", "PLAIN DOWN", -1, true, true];
_camera camCommit  _bpm*3;
waitUntil { camCommitted _camera};
titleText ["<t size='2'>Sound Design<br/>Donov<br/>Dohop</t>", "PLAIN DOWN", -1, true, true];
_camera camCommit  _bpm*3;
waitUntil { camCommitted _camera};
titleText ["<t size='2'>Localization<br/>Donov</t>", "PLAIN DOWN", -1, true, true];
_camera camCommit  _bpm*3;
waitUntil { camCommitted _camera};
titleText ["<t size='2'>Legal<br/>Eaton</t>", "PLAIN DOWN", -1, true, true];
_camera camCommit  _bpm*3;
waitUntil { camCommitted _camera};
titleText ["<t size='2'>And a Special Thanks...</t>", "PLAIN DOWN", -1, true, true];
_camera camCommit  _bpm*4;
waitUntil { camCommitted _camera};
titleText ["<t size='3'>To You!</t>", "PLAIN DOWN", -1, true, true];
_payload = round(random 600) max 400; 
//[[3922.6+800,15493.2,0], _payload] call RHS_fnc_ss21_nuke;
_camera camCommit  _bpm*2;
waitUntil { camCommitted _camera};
cutText ["<t color='#FFFFFF' size='5'>Congratulations!</t>", "WHITE OUT", -1, true, true];
_camera camCommit  _bpm*25;
waitUntil { camCommitted _camera};
endMission "END1";

_camera cameraeffect ["terminate","back"];
camdestroy _camera;
//["pja306",[4286.58,15562.9,167.162],260.264,0.75,[-22.0376,0],0,0,699.567,0,0,1,0,1]