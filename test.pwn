// generated by "sampctl package generate"

#include "AntiJC.inc"
#include "rAgc.inc"
#include "Opba.inc"
#include "rAct.inc"
#include "rEac.inc"
#include "rAmc.inc"
#include "rAntiBuggers.inc"

#include "rAsc.inc"
#include "rVM.inc"
#include "rAcs.inc"
#include "AFkill.inc"
#include "AntiFC.inc"

main() {
	AddStaticVehicle(560, 0.0, 0.0, 0.0, 0.0, 0, 0);
	print("Anti cheat packet test loaded.");
}
new Test_String[80];

public OnPlayerFakeKill(playerid, spoofedid, spoofedreason, faketype)
{
	format(Test_String, sizeof(Test_String), "ID %d just spoof killed ID %d reason %d type %d", playerid, spoofedid, spoofedreason, faketype);
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}

public OnPlayerFakeConnect(playerid)
{
	format(Test_String, sizeof(Test_String), "ID %d is fake connecting!", playerid);
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}

public OnPlayerJetpackCheat(playerid)
{
	format(Test_String, sizeof(Test_String), "ID %d is using jetpack cheats!", playerid);
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}

public OnPlayerGunCheat(playerid, weaponid, ammo, hacktype)
{
	format(Test_String, sizeof(Test_String), "ID %d just used weapon cheats weapon %d ammo %d type %d!", playerid, weaponid, ammo, hacktype);
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}

public OnPlayerSpeedCheat(playerid, speedtype)
{
	format(Test_String, sizeof(Test_String), "ID %d just speed cheats type !", playerid, speedtype);
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}

public OnPlayerBreakAir(playerid, breaktype)
{
	format(Test_String, sizeof(Test_String), "ID %d used airbreak/teleport cheats type %d !", playerid, breaktype);
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}

public OnPlayerSpamCars(playerid, number)
{
	format(Test_String, sizeof(Test_String), "ID %d used car spammed %d vehicles !", playerid, number);
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}

public OnPlayerCarTroll(playerid, vehicleid, trolledid, trolltype)
{
	if(trolledid == INVALID_PLAYER_ID)
		format(Test_String, sizeof(Test_String), "ID %d used car troll cheats vehicle %d type %d !", playerid, vehicleid, trolltype);
	else
		format(Test_String, sizeof(Test_String), "ID %d used car troll cheats on ID %d vehicle %d type %d !", playerid, trolledid, vehicleid, trolltype); 
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}

public OnPlayerCashCheat(playerid, oldcash, newcash, amount)
{
	format(Test_String, sizeof(Test_String), "ID %d used money cheats for %d !", playerid, amount);
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}

public OnPlayerCarSwing(playerid, vehicleid)
{
	format(Test_String, sizeof(Test_String), "ID %d used car swing cheats vehicle %d !", playerid, vehicleid);
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}

public OnPlayerParticleSpam(playerid, vehicleid)
{
	format(Test_String, sizeof(Test_String), "ID %d used car particle spam cheats vehicle %d !", playerid, vehicleid);
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}

public OnVehicleModEx(playerid, vehicleid, componentid, illegal)
{
	if(illegal)
	{
		format(Test_String, sizeof(Test_String), "ID %d used car mod cheats component %d vehicle %d !", playerid, componentid, vehicleid);
		SendClientMessageToAll(-1, Test_String);
		print(Test_String);
	}
	return 1;
}

public OnPlayerBugAttempt(playerid, bugcode)
{
	format(Test_String, sizeof(Test_String), "ID %d used bug cheats type %d !", playerid, bugcode);
	SendClientMessageToAll(-1, Test_String);
	print(Test_String);
	return 1;
}
