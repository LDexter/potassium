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
drawLine = function(stX, stY, enX, enY, color)
	if color == nil then
		color = colors.white
	end
	local dX = enX - stX
	local dY = enY - stY
	local d = 2 * dY - dX
	local plotY = stY
	for plotX = stX, enX do
		plotPixel(plotX, plotY, color)
		if d > 0 then
			plotY = plotY + 1
			d = d - (2 * dX)
		end
		d = d + 2 * dY
	end
end
_module_0["drawLine"] = drawLine
return _module_0
