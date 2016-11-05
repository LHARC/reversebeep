--------------------------------------
----------- (c) 2016 -----------------
----------- by LHARC -----------------
------ github.com/Stoppered ----------
--------------------------------------
----- Don't remove the credits -------
----- Be a cool guy, and support me --
------ send me a cent on paypal ------
-- \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ --
----- contato@lucas-henrique.com -----
--------------------------------------
--------- WWW.BVR-RPG.COM ------------
--------------------------------------

function doBeepNextToPlayers ( thePlayer, commandName, theVehicle )
for id, player in ipairs(getElementsByType("player")) do 
local vehicleX, vehicleY, vehicleZ = getElementPosition ( client )
local playerX, playerY, playerZ = getElementPosition ( player )
local distance = getDistanceBetweenPoints3D ( vehicleX, vehicleY, vehicleZ, playerX,playerY, playerZ )
if(distance < 25) then
triggerClientEvent ( player, "doReverseBeep", player, vehicleX, vehicleY, vehicleZ)
end
end
end
addEvent( "onReverseBeep", true )
addEventHandler( "onReverseBeep", resourceRoot, doBeepNextToPlayers )