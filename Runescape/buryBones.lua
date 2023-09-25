--[[
this scripts intention is to bury bones you collect when killing mobs
it will start from the last slot in your inventory and click backwards, right to left
to bury as many bones as you provide in 'numBones'
--]]
function buryBones(numBones)
	OutputLogMessage("BONE BEGIN\n")
	for row = 7,1,-1
	do
		for column = 4,1,-1
		do
			OutputLogMessage("clicking inventory %d,%d\n",row,column)
			clickInventorySlot(column,row,1)
			Sleep(2000)
			numBones = numBones - 1
			OutputLogMessage("BONE BURIED %d REMAINING\n",numBones)
			if(numBones == 0) then
				OutputLogMessage("BONE COMPLETED\n")
				return
			end
		end
	end
end
