local draw = require("utils.draw")
local ObjBase
do
	local _class_0
	local _base_0 = {
		render = function(self)
			return draw.drawRectangle(self.stPos[1], self.stPos[2], self.enPos[1], self.enPos[2], self.style)
		end
	}
	if _base_0.__index == nil then
		_base_0.__index = _base_0
	end
	_class_0 = setmetatable({
		__init = function(self, posX, posY, width, height, style)
			self.stPos = {
				posX,
				posY
			}
			self.enPos = {
				posX,
				posY
			}
			self.size = {
				width,
				height
			}
			self.style = style
			self.events = { }
		end,
		__base = _base_0,
		__name = "ObjBase"
	}, {
		__index = _base_0,
		__call = function(cls, ...)
			local _self_0 = setmetatable({ }, _base_0)
			cls.__init(_self_0, ...)
			return _self_0
		end
	})
	_base_0.__class = _class_0
	ObjBase = _class_0
	return _class_0
end
