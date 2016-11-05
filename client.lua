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

-- These are the vehicles that have the beep, the current are the commercial and heavy vehicles.
vehiclesBeep = {
485,431,437,574,525,408,552,416,433,427,407,544,428,499,609,
498,524,532,578,486,406,573,455,588,403,423,414,443,515,514,456
}

function TruckReverseSound(x,y,z)
	local sfx = playSound3D("sfx/SFX_REVERSE_BEEP_2.mp3", x, y, z, false) 
	setSoundMaxDistance( sfx, 30 )
end
addEvent ( "doReverseBeep", true )
addEventHandler ( "doReverseBeep", getRootElement(), TruckReverseSound )

function detectDirection ()
local theVehicle = getPedOccupiedVehicle (getLocalPlayer())
if theVehicle then
local m = getElementMatrix ( theVehicle )
local ax, ay, az = getElementVelocity(theVehicle) 
local DirectionVector = (ax * m[2][1]) + (ay * m[2][2]) + (az * m[2][3]) 
local x,y,z = getElementPosition (theVehicle)

if (DirectionVector < 0) then
    triggerServerEvent ( "onReverseBeep", resourceRoot)
end
end 
end

addEventHandler("onClientVehicleEnter", getRootElement(),
    function(thePlayer, seat)
        if thePlayer == getLocalPlayer() then
		if(seat == 0) then
		    for i, v in ipairs (vehiclesBeep) do
			if(v == getElementModel(source))then
		BeepTimer = setTimer ( detectDirection, 1000, 0 )
			end
end
		end
        end
    end)
	
addEventHandler("onClientVehicleExit", getRootElement(),
    function(thePlayer, seat)
        if thePlayer == getLocalPlayer() then
           		if(seat == 0) then
		if isTimer ( BeepTimer ) then killTimer ( BeepTimer ) end
		end
        end
    end)
	
outputDebugString ( "Reverse beep started by LHARC" )