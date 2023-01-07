local potassium = require("potassium")
term.clear()
local lines = {
	{
		2,
		2,
		2,
		8
	},
	{
		4,
		2,
		8,
		8
	},
	{
		14,
		2,
		10,
		8
	}
}
for _index_0 = 1, #lines do
	local line = lines[_index_0]
	potassium.utils.draw.drawLine(unpack(line))
end
