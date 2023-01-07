local potassium = require("potassium")
term.clear()
term.setCursorPos(1, 1)
print("Left click to draw object, right click to set object start.")
local w, h
w, h = term.getSize()
local startX, startY
startX, startY = math.floor(w / 2), math.floor(h / 2)
while true do
	local event = {
		os.pullEvent("mouse_click")
	}
	local btn, x, y = event[2], event[3], event[4]
	if 1 == btn then
		potassium.utils.draw.drawLine(startX, startY, x, y)
	elseif 2 == btn then
		startX, startY = x, y
	end
end
