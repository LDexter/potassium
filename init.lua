local dir = fs.getDir(({
	...
})[2])
local potassium = { }
potassium.utils = require(tostring(dir) .. ".utils")
return potassium
