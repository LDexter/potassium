local _module_0 = { }
local plotPixel
plotPixel = function(x, y, color)
	local oldX, oldY = term.getCursorPos()
	local oldBg = term.getBackgroundColor()
	term.setCursorPos(x, y)
	term.setBackgroundColor(color)
	term.write(" ")
	term.setBackgroundColor(oldBg)
	return term.setCursorPos(oldX, oldY)
end
_module_0["plotPixel"] = plotPixel
local drawLine
drawLine = function(startX, startY, endX, endY, color)
	if color == nil then
		color = colors.white
	end
	local dx = math.abs(endX - startX)
	local sx
	if startX < endX then
		sx = 1
	else
		sx = -1
	end
	local dy = -math.abs(endY - startY)
	local sy
	if startY < endY then
		sy = 1
	else
		sy = -1
	end
	local err = dx + dy
	while true do
		plotPixel(startX, startY, color)
		if startX == endX and startY == endY then
			break
		end
		local e2 = 2 * err
		if e2 >= dy then
			if startX == endX then
				break
			end
			err = err + dy
			startX = startX + sx
		end
		if e2 <= dx then
			if startY == endY then
				break
			end
			err = err + dx
			startY = startY + sy
		end
	end
end
_module_0["drawLine"] = drawLine
local drawRectangle
drawRectangle = function(startX, startY, endX, endY, color)
	if color == nil then
		color = colors.white
	end
	drawLine(startX, startY, endX, startY, color)
	drawLine(endX, startY, endX, endY, color)
	drawLine(startX, startY, startX, endY, color)
	return drawLine(startX, endY, endX, endY, color)
end
_module_0["drawRectangle"] = drawRectangle
return _module_0
