local dir = fs.getDir(({
	...
})[2])
local oldPath = package.path
package.path = "/" .. tostring(dir) .. "/?.lua;/" .. tostring(dir) .. "/?/init.lua;/rom/modules/main/?.lua"
local utils = require("utils")
local objects = require("objects")
local potassium = {
	utils = utils,
	objects = objects
}
package.path = oldPath
return potassium
