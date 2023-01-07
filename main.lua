local objects = require("objects")
local utils = require("utils")
local potassium = {
	objects = objects,
	utils = utils,
	running = false
}
local objectList = { }
potassium.run = function()
	local updateTimer = os.startTimer(0.10)
	local eventArgs = os.pullEvent()
	local eventName = table.remove(eventArgs, 1)
	if eventName == "timer" and eventArgs[1] == updateTimer then
		updateTimer = os.startTimer(0.10)
	else
		for _, obj in pairs(objectList) do
			if obj.events[eventName] then
				obj:event(eventName, eventArgs)
			end
		end
	end
end
return potassium
