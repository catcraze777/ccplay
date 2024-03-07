local consts = require "consts"
local property = require "lua/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local LaneType = Object.new()
function LaneType.image()
	local src = "src-lane" local x = 0 local y = 0 local w = property.constants.lane_width_ac local h = property.constants.lane_height_ac
	t = {
		{id = "judgeline", src = "src-judgeline", x = 0, y = 0, w = 1, h = 1}
	}
	if property.is1pLane() then
		table.insert(t, {id = "lane", src = src, x = x, y = y, w = w, h = h})
	else
		table.insert(t, {id = "lane", src = src, x = 587, y = y, w = w, h = h})
	end
	for i = 1, 7 do
		table.insert(t, {id = "keyflash-"..i, src = "src-keyflash", x = property.constants.note_position_x[i] - property.constants.note_position_x[1], y = 0, w = property.constants.note_width[i], h = 86 } )
	end
	for i = 1, 8 do
		table.insert(t, {id = "keybeam-"..i, src = "src-keybeam", x = property.constants.note_position_x_p1[i] - property.constants.note_position_x_p1[8], y = 0, w = property.constants.note_width[i], h = 460 } )
	end
	table.insert(t, {id = "emblem", src = "src-emblem", x = 0, y = 0, w = 50, h = 50})
	return t
end
function LaneType.slider()
	t = {
		{id = "progressbar-lamp", src = "src-common", x = 422, y = 0, w = 50, h = 68, angle = 2, range = 601, type = 6}
	}
	return t
end
function LaneType.destination()
	local x = 0 local y = 0 local w = LaneType.w local h = LaneType.h
	t = {
		--{id = -110, dst = { {x = property.constants.lane_x_location + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac - property.constants.lane_outline_width} }},
		{id = "lane", loop = 500, dst = { 
			{time = 0, x = property.constants.lane_x_location, y = property.constants.lane_y_location + 500, w = property.constants.lane_width_ac, h = property.constants.lane_height_ac, a = 0},
			{time = 250, x = property.constants.lane_x_location, y = property.constants.lane_y_location + 125, w = property.constants.lane_width_ac, h = property.constants.lane_height_ac, a = 128},
			{time = 375, x = property.constants.lane_x_location, y = property.constants.lane_y_location + 31, w = property.constants.lane_width_ac, h = property.constants.lane_height_ac, a = 192},
			{time = 500, x = property.constants.lane_x_location, y = property.constants.lane_y_location, w = property.constants.lane_width_ac, h = property.constants.lane_height_ac, a = 255}}},
		--{id = -110, offsets = {48}, dst = { {x = property.constants.lane_x_location + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac - property.constants.lane_outline_width, a = 0} }}
	}
	for i = 1, 7 do
		table.insert(t, {id = "keyflash-"..i, timer = 100 + i, op = {-80}, blend = 2, loop = 500, dst = {
			{x = property.constants.note_position_x[i] + property.constants.lane_x_location + property.constants.lane_outline_width, y = 258, w = property.constants.note_width[i], h = 86 }
		} } )
		table.insert(t, {id = "keybeam-"..i, timer = 100 + i, op = {-80}, offsets = {3}, loop = 500, dst = {
			{x = property.constants.note_position_x[i] + property.constants.lane_x_location, y = 358, w = property.constants.note_width[i], h = 460 }
		} } )
		table.insert(t, {id = "keybeam-"..i, timer = 120 + i, op = {-80}, offsets = {3}, loop = 500, loop = 70, dst = {
			{time = 0, x = property.constants.note_position_x[i] + property.constants.lane_x_location, y = 358, w = property.constants.note_width[i], h = 460 },
			{time = 70, h = 0}
		} } )
	end
	table.insert(t, {id = "keybeam-8", timer = 100, offsets = {3}, op = {-80}, loop = 500, dst = {
			{x = property.constants.note_position_x[8] + property.constants.lane_x_location, y = 358, w = property.constants.note_width[8], h = 460 }
		} } )
	table.insert(t, {id = "keybeam-8", timer = 120, offsets = {3}, op = {-80}, loop = 500, loop = 70, dst = {
			{time = 0, x = property.constants.note_position_x[8] + property.constants.lane_x_location, y = 358, w = property.constants.note_width[8], h = 460 },
			{time = 70, h = 0}
		} } )
	table.insert(t, {id = "judgeline", offsets = {3}, loop = 1200, dst = { 
		{time = 1000, a = 0, x = property.constants.lane_x_location + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.note_total_width, h = property.constants.judgeline_height},
		{time = 1200, a = 255, x = property.constants.lane_x_location + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.note_total_width, h = property.constants.judgeline_height} 			
	}} )
	if property.is1pLane() then
		table.insert(t, {id = "emblem", offset = 1, stretch = 3, loop = 500, dst = {
			{time = 0, x = 75, y = 262 + 500, w = 50, h = 50, a = 0},
			{time = 250, x = 75, y = 262 + 125, w = 50, h = 50, a = 128},
			{time = 375, x = 75, y = 262 + 31, w = 50, h = 50, a = 192},
			{time = 500, y = 262, a = 255}
		} } )
		table.insert(t, {
			id = "progressbar-lamp", blend = 2, loop = 500, dst = {
				{time = 0, x = 36, y = 990, w = 50, h = 68, acc = 2, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 250, y = 990 + 125, a = 128},
				{time = 375, y = 990 + 31, a = 192},
				{time = 500, y = 990}
			}
		})
	else
		table.insert(t, {id = "emblem", offset = 1, stretch = 3, loop = 500, dst = {
			{time = 0, x = 1795, y = 262 + 500, w = 50, h = 50, a = 0},
			{time = 250, x = 1795, y = 262 + 125, w = 50, h = 50, a = 128},
			{time = 375, x = 1795, y = 262 + 31, w = 50, h = 50, a = 192},
			{time = 500, y = 262, a = 255}
		} } )
		table.insert(t, {
			id = "progressbar-lamp", blend = 2, loop = 500, dst = {
				{time = 0, x = 1834, y = 990, w = 50, h = 68, acc = 2, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 250, y = 990 + 125, a = 128},
				{time = 375, y = 990 + 31, a = 192},
				{time = 500, y = 990}
			}
		})
	end
	return t
end

local Lane = Objects.new({LaneType})

return Lane