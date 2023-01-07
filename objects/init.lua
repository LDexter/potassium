local _module_0 = { }
local dir = fs.getDir(({
	...
})[2])
local list = fs.list(dir)
local filteredList
do
	local _accum_0 = { }
	local _len_0 = 1
	for _index_0 = 1, #list do
		local file = list[_index_0]
		if file:match("lua$") and file ~= "init.lua" then
			_accum_0[_len_0] = file:gsub(".lua$", "")
			_len_0 = _len_0 + 1
		end
	end
	filteredList = _accum_0
end
local objects = { }
for _index_0 = 1, #filteredList do
	local obj = filteredList[_index_0]
	objects[#objects + 1] = require("objects." .. tostring(obj))
end
objects = objects
_module_0["objects"] = objects
return _module_0
