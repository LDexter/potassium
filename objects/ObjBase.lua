local ObjBase
do
	local _class_0
	local _base_0 = {
		render = function(self) end
	}
	if _base_0.__index == nil then
		_base_0.__index = _base_0
	end
	_class_0 = setmetatable({
		__init = function(self, posX, posY, width, height, style)
			self.pos = {
				posX,
				posY
			}
			self.size = {
				width,
				height
			}
			self.style = style
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
