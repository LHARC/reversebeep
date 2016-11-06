--------------------------------------
----------- (c) 2016 -----------------
-------------- LHARC -----------------
------------ REWRITE -----------------
----------- AND OPTIMIZED ------------
-------  BY THE MYTH WALID -----------
--------------------------------------
------ github.com/Stoppered ----------
--------------------------------------
----- Don't remove the credits -------
----- Be a cool guy, and support me --
--------------------------------------

function doBeepNextToPlayers (theVehicle)
    if theVehicle then 
        local vehicleX, vehicleY, vehicleZ = getElementPosition (theVehicle)
        local position = toJSON({vehicleX, vehicleY, vehicleZ})
        triggerClientEvent ( root, "doReverseBeep", root, position)
    end 
end
addEvent( "onReverseBeep", true )
addEventHandler( "onReverseBeep", resourceRoot, doBeepNextToPlayers )