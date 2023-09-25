--constants used to calibrate events, use printCurrentMousePosition() in the OnEvent function to calibrate
local distanceBetweenEachRow = 2200
local distanceBetweenEachColumn = 1500
local firstRowPos = 45674
local firstColumnPos = 58261
local centerScreenX = 31111
local centerScreenY = 29700

--main function, replace events here to run different commands
function OnEvent(event, arg)
    OutputLogMessage("event = %s, arg = %s\n", event, arg)
	--calibrate the scripts screen using this event
	if(event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
		printCurrentMousePosition();
	end
	--make soft clay, position the water source just to the left of your inv and zoom in
	if(event == "MOUSE_BUTTON_PRESSED" and arg == 5) then
    --insert external method name here
	end
end

--insert external methods here

--insert external methods here


--[[
clicks a slot in your inventory
column valid values: 1-7
row valid values: 1-4
--]]
function clickInventorySlot(column,row,mouseButton)
	rowPos = getInventoryRowPosition(row)
	columnPos = getInventoryColumnPosition(column)
	MoveMouseTo(columnPos,rowPos)
	PressMouseButton(mouseButton)
	ReleaseMouseButton(mouseButton)
	--OutputLogMessage("Clicked Inventory Slot %d,%d\n",row,column)
	--OutputLogMessage("Position Clicked, X - %d, Y - %d\nMouseButton - %d\n",rowPos, columnPos,mouseButton)
end

--[[
this method points to the center of the screen waits for 'sleep' amount
and then clicks with 'mouseButton' Mouse Button
--]]
function clickCenterScreen(mouseButton, sleep)
	MoveMouseTo(centerScreenX, centerScreenY)
	Sleep(sleep)
	PressMouseButton(mouseButton)
	ReleaseMouseButton(mouseButton)
end

--[[
this method returns the 'X' coordinate when selecting an inventory space based on the Column inputted
--]]
function getInventoryColumnPosition(columnNumber)
	columnNumber = columnNumber - 1
	return firstColumnPos+distanceBetweenEachColumn*columnNumber
end

--[[
this method returns the 'Y' coordinate when selecting an inventory space based on the Row inputted
--]]
function getInventoryRowPosition(rowNumber)
	rowNumber = rowNumber - 1
	return firstRowPos+distanceBetweenEachRow*rowNumber
end

--[[
this method will print the current X and Y values of the mouse on your screen
use this in the OnEvent() method to calibrate any unique resolutions/ui layout
--]]
function printCurrentMousePosition()
	x, y = GetMousePosition();
	OutputLogMessage("Current mouse position is at %d, %d\n", x, y);
end


	

