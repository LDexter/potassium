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
drawLine = function(x0, y0, x1, y1, color)
	if color == nil then
		color = colors.white
	end
	local dx = math.abs(x1 - x0)
	local sx
	if x0 < x1 then
		sx = 1
	else
		sx = -1
	end
	local dy = -math.abs(y1 - y0)
	local sy
	if y0 < y1 then
		sy = 1
	else
		sy = -1
	end
	local err = dx + dy
	while true do
		plotPixel(x0, y0, color)
		if x0 == x1 and y0 == y1 then
			break
		end
		local e2 = 2 * err
		if e2 >= dy then
			if x0 == x1 then
				break
			end
			err = err + dy
			x0 = x0 + sx
		end
		if e2 <= dx then
			if y0 == y1 then
				break
			end
			err = err + dx
			y0 = y0 + sy
		end
	end
end
_module_0["drawLine"] = drawLine
return _module_0
