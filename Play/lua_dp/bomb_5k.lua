local consts = require "consts"
local property = require "lua_dp/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local bomb = Object.new()
function bomb.image()
	t = {}
	for i = 1, 5 do
		table.insert(t, {id = "bomb-" .. i, src = "src-bomb", x = 0, y = 0, w = 640, h = 648, divx = 4, divy = 4, timer = 50 + i, cycle = 266})
		table.insert(t, {id = "hold-" .. i, src = "src-bomb", x = 0, y = 162, w = 640, h = 162, divx = 4, divy = 1, timer = 70 + i, cycle = 133})
	end
	table.insert(t, {id = "bomb-" .. 6, src = "src-bomb", x = 0, y = 0, w = 640, h = 648, divx = 4, divy = 4, timer = 50, cycle = 266})
	table.insert(t, {id = "hold-" .. 6, src = "src-bomb", x = 0, y = 162, w = 640, h = 162, divx = 4, divy = 1, timer = 70, cycle = 133})
	
	for i = 1, 5 do
		table.insert(t, {id = "bomb-" .. i+6, src = "src-bomb", x = 0, y = 0, w = 640, h = 648, divx = 4, divy = 4, timer = 60 + i, cycle = 266})
		table.insert(t, {id = "hold-" .. i+6, src = "src-bomb", x = 0, y = 162, w = 640, h = 162, divx = 4, divy = 1, timer = 80 + i, cycle = 133})
	end
	table.insert(t, {id = "bomb-" .. 12, src = "src-bomb", x = 0, y = 0, w = 640, h = 648, divx = 4, divy = 4, timer = 60, cycle = 266})
	table.insert(t, {id = "hold-" .. 12, src = "src-bomb", x = 0, y = 162, w = 640, h = 162, divx = 4, divy = 1, timer = 80, cycle = 133})
	return t
end
function bomb.destination()
	t = {}
	for i = 1, 5 do
		table.insert(t, {id = "bomb-" .. i, timer = 50 + i, loop = -1, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
			{time = 0, x = property.constants.note_position_x_p1_5key[i] + property.constants.lane_x_location_p1 - 2 * property.constants.note_width_5key[i], y = 10 + 358 - 2.5 * property.constants.note_width_5key[i] + 5, w = 5 * property.constants.note_width_5key[i], h = 5 * property.constants.note_width_5key[i]},
			{time = 265}
		}})
		table.insert(t, {id = "hold-" .. i, timer = 70 + i, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
			{x = property.constants.note_position_x_p1_5key[i] + property.constants.lane_x_location_p1 - 2 * property.constants.note_width_5key[i], y = 10 + 358 - 2.5 * property.constants.note_width_5key[i] + 5, w = 5 * property.constants.note_width_5key[i], h = 5 * property.constants.note_width_5key[i]}
		}})
	end 
	table.insert(t, {id = "bomb-6", timer = 50, loop = -1, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
		{time = 0, x = property.constants.note_position_x_p1_5key[6] + property.constants.lane_x_location_p1 - 2 * property.constants.note_width_5key[6], y = 10 + 358 - 2.5 * property.constants.note_width_5key[6] + 5, w = 5 * property.constants.note_width_5key[6], h = 5 * property.constants.note_width_5key[6]},
		{time = 265}
	}})
	table.insert(t, {id = "hold-6", timer = 70, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
		{x = property.constants.note_position_x_p1_5key[6] + property.constants.lane_x_location_p1 - 2 * property.constants.note_width_5key[6], y = 10 + 358 - 2.5 * property.constants.note_width_5key[6] + 5, w = 5 * property.constants.note_width_5key[6], h = 5 * property.constants.note_width_5key[6]}
	}})
	
	for i = 1, 5 do
		table.insert(t, {id = "bomb-" .. i+6, timer = 60 + i, loop = -1, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
			{time = 0, x = property.constants.note_position_x_p2_5key[i] + property.constants.lane_x_location_p2 - 2 * property.constants.note_width_5key[i], y = 10 + 358 - 2.5 * property.constants.note_width_5key[i] + 5, w = 5 * property.constants.note_width_5key[i], h = 5 * property.constants.note_width_5key[i]},
			{time = 265}
		}})
		table.insert(t, {id = "hold-" .. i+6, timer = 80 + i, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
			{x = property.constants.note_position_x_p2_5key[i] + property.constants.lane_x_location_p2 - 2 * property.constants.note_width_5key[i], y = 10 + 358 - 2.5 * property.constants.note_width_5key[i] + 5, w = 5 * property.constants.note_width_5key[i], h = 5 * property.constants.note_width_5key[i]}
		}})
	end 
	table.insert(t, {id = "bomb-12", timer = 60, loop = -1, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
		{time = 0, x = property.constants.note_position_x_p2_5key[6] + property.constants.lane_x_location_p2 - 2 * property.constants.note_width_5key[6], y = 10 + 358 - 2.5 * property.constants.note_width_5key[6] + 5, w = 5 * property.constants.note_width_5key[6], h = 5 * property.constants.note_width_5key[6]},
		{time = 265}
	}})
	table.insert(t, {id = "hold-12", timer = 80, blend = 3, filter = 1, stretch = 4, offsets = {3, 40}, dst = {
		{x = property.constants.note_position_x_p2_5key[6] + property.constants.lane_x_location_p2 - 2 * property.constants.note_width_5key[6], y = 10 + 358 - 2.5 * property.constants.note_width_5key[6] + 5, w = 5 * property.constants.note_width_5key[6], h = 5 * property.constants.note_width_5key[6]}
	}})
	return t
end

local Bomb = Objects.new({bomb})

return Bomb