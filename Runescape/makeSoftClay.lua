--[[
This script was setup to automate the process of creating soft clay in Old School RuneScape
Intended Inventory Slots: First inventory slot should be a bucket, all other inventory slots should be clay (hard)
Intended Location: The Fountain by Varrok East Bank, player should zoom in until fountain is overlapping their inventory to the left
The below methods should be copy pasted into base.lua, and then makeSoftClay(27) should be pasted into the onEvent function to setup this script
--]]

--[[
make soft clay at the varrok fountain
requires a bucket/jug in your first inv slot, fill other slots with clay
only works for full inv right now, howMuchClay can be changed in future
line up your character so that their ass is directly in front of the fountain
]]--
function makeSoftClay(howMuchClay)
	--begin clay time
	OutputLogMessage("ITS CLAY TIME")
	for i = howMuchClay,1,-1
	do
		--left click the bucket
		OutputLogMessage("Clicking Bucket\n")
		clickInventorySlot(1,1,1)
		Sleep(100)
		--left click the water source to the left of your inv
		OutputLogMessage("Clicking Water\n")
		clickCenterScreen(1,500)
		Sleep(750)
		--left click the bucket
		OutputLogMessage("Clicking Bucket\n")
		clickInventorySlot(1,1,1)
		Sleep(100)
		--left click the hard clay in your last slot
		OutputLogMessage("Clicking Clay\n")
		clickInventorySlot(4,7,1)
		Sleep(2000)
		OutputLogMessage("Clay Left %d\n", i-1)
	end
	OutputLogMessage("CLAY TIME IS OVER")
end
--[[
clicks just left of your inventory where a water source should be positioned
]]--
function clickWaterSource()
	waterSourceX = firstColumnPos - distanceBetweenEachColumn*2
	waterSourceY = firstRowPos
	MoveMouseTo(waterSourceX,waterSourceY)
	Sleep(500)
	PressMouseButton(1)
	ReleaseMouseButton(1)
	--OutputLogMessage("Clicked Water Source at: %d,%d\n",waterSourceX,waterSourceY)
end
