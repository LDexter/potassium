local _module_0 = nil
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
local utils = { }
for _index_0 = 1, #filteredList do
	local util = filteredList[_index_0]
	utils[util] = require("utils." .. tostring(util))
end
_module_0 = utils
return _module_0
