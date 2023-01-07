local dir = fs.getDir(({
	...
})[2])
local oldPath = package.path
package.path = "/" .. tostring(dir) .. "/?.lua;/" .. tostring(dir) .. "/?/init.lua;/rom/modules/main/?.lua"
local main = require("main")
package.path = oldPath
return main
