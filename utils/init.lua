local _module_0 = { }
local dir = fs.getDir(({
	...
})[2])
local draw = { }
draw = require(tostring(dir) .. ".UtilDraw")
draw = draw
_module_0["draw"] = draw
return _module_0
