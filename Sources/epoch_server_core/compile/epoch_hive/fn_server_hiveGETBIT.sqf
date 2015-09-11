/*
    Hive Getbit
    by Aaron Clark - EpochMod.com

    This work is licensed under a Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
    http://creativecommons.org/licenses/by-nc-nd/4.0/

    Improvements and or bugfixes and other contributions are welcome via the github:
    https://github.com/EpochModTeam/Epoch/tree/master/Sources/epoch_server_core/compile/epoch_hive/fn_server_hiveGETBIT.sqf
*/

private ["_hiveResponse","_hiveStatus","_hiveMessage"];
//_PREFIX = _this select 0;
//_KEY = _this select 1;
//_BIT = _this select 2;

_hiveMessage = false;
_hiveResponse = "epochserver" callExtension format["240|%1:%2|%3", _this select 0, _this select 1, _this select 2];
if (_hiveResponse != "") then {
	_hiveResponse = call compile _hiveResponse;
	if !(isNil "_hiveResponse") then {
		if (typeName _hiveResponse == "ARRAY" && !(_hiveResponse isEqualTo[])) then {
			if ((_hiveResponse select 0) == 1) then {
				_hiveMessage = ((_hiveResponse select 1) == "1");
			};
		};
	};
};
_hiveMessage
