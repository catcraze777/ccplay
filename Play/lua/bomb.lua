local consts = require "consts"
local property = require "lua/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local bomb = Object.new()
function bomb.image()
	t = {}
	for i = 1, 7 do
		table.insert(t, {id = "bomb-" .. i, src = "src-bomb", x = 0, y = 0, w = 640, h = 648, divx = 4, divy = 4, timer = 50 + i, cycle = 266})
		table.insert(t, {id = "hold-" .. i, src = "src-bomb", x = 0, y = 162, w = 640, h = 162, divx = 4, divy = 1, timer = 70 + i, cycle = 133})
	end
	table.insert(t, {id = "bomb-" .. 8, src = "src-bomb", x = 0, y = 0, w = 640, h = 648, divx = 4, divy = 4, timer = 50, cycle = 266})
	table.insert(t, {id = "hold-" .. 8, src = "src-bomb", x = 0, y = 162, w = 640, h = 162, divx = 4, divy = 1, timer = 70, cycle = 133})
	return t
end
function bomb.destination()
	t = {}
	for i = 1, 7 do
		table.insert(t, {id = "bomb-" .. i, timer = 50 + i, loop = -1, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
			{time = 0, x = property.constants.note_position_x[i] + property.constants.lane_x_location - 2 * property.constants.note_width[i], y = 10 + 358 - 2.5 * property.constants.note_width[i] + 5, w = 5 * property.constants.note_width[i], h = 5 * property.constants.note_width[i]},
			{time = 265}
		}})
		table.insert(t, {id = "hold-" .. i, timer = 70 + i, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
			{x = property.constants.note_position_x[i] + property.constants.lane_x_location - 2 * property.constants.note_width[i], y = 10 + 358 - 2.5 * property.constants.note_width[i] + 5, w = 5 * property.constants.note_width[i], h = 5 * property.constants.note_width[i]}
		}})
	end 
	table.insert(t, {id = "bomb-8", timer = 50, loop = -1, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
		{time = 0, x = property.constants.note_position_x[8] + property.constants.lane_x_location - 2 * property.constants.note_width[8], y = 10 + 358 - 2.5 * property.constants.note_width[8] + 5, w = 5 * property.constants.note_width[8], h = 5 * property.constants.note_width[8]},
		{time = 265}
	}})
	table.insert(t, {id = "hold-8", timer = 70, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
		{x = property.constants.note_position_x[8] + property.constants.lane_x_location - 2 * property.constants.note_width[8], y = 10 + 358 - 2.5 * property.constants.note_width[8] + 5, w = 5 * property.constants.note_width[8], h = 5 * property.constants.note_width[8]}
	}})
	return t
end

local Bomb = Objects.new({bomb})

return Bomb