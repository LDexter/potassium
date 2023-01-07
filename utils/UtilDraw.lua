local _module_0 = { }
local plotPixel
plotPixel = function(x, y)
	term.setCursorPos(x, y)
	return term.write(" ")
end
_module_0["plotPixel"] = plotPixel
local drawLine
drawLine = function(stX, stY, enX, enY)
	local dX = enX - stX
	local dY = enY - stY
	local d = 2 * dY - dX
	local plotY = stY
	for plotX = stX, enX do
		plotPixel(plotX, plotY)
		if d > 0 then
			plotY = plotY + 1
			d = d - (2 * dX)
		end
		d = d + 2 * dY
	end
end
_module_0["drawLine"] = drawLine
return _module_0
