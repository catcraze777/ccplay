local consts = require "consts"
local property = require "lua/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local Judge = Object.new()
function Judge.source()
	t = {
		{id = "src-judgetext", path = "img/common/judge/Default.png"}
	}
	return t
end

function Judge.image()
	local source_id = "src-judgetext"
	t = {
		{id = "judgef-pg", src = source_id, x = 0, y = 0, w = 255, h = 112 * 3, divy = 3, cycle = 99},
		{id = "judgef-gr", src = source_id, x = 0, y = 112 * 3, w = 255, h = 112 * 2, divy = 2, cycle = 66},
		{id = "judgef-gd", src = source_id, x = 0, y = 112 * 5, w = 255 * 2, h = 112, divx = 2, cycle = 66},
		{id = "judgef-bd", src = source_id, x = 0, y = 112 * 6, w = 255 * 2, h = 112, divx = 2, cycle = 66},
		{id = "judgef-pr", src = source_id, x = 0, y = 112 * 7, w = 255 * 2, h = 112, divx = 2, cycle = 66},
		{id = "judgef-ms", src = source_id, x = 0, y = 112 * 7, w = 255 * 2, h = 112, divx = 2, cycle = 66},
		{id = "judge-fast", src = "src-common", x = 0, y = 515, w = 85, h = 25},
		{id = "judge-slow", src = "src-common", x = 85, y = 515, w = 85, h = 25},
		{id = "autoplay", src = "src-common", x = 0, y = 544, w = 144, h = 25},
		{id = "loading", src = "src-common", x = 136, y = 579, w = 122, h = 25},
		{id = "ready", src = "src-common", x = 136, y = 605, w = 122, h = 25},
		{id = "finish", src = "src-common", x = 136, y = 635, w = 244, h = 50},
		{id = "full-combo", src = "src-common", x = 136, y = 748, w = 244, h = 103}
	}
	return t
end
function Judge.value()
	local source_id = "src-judgetext"
	t = {
		{id = "judgen-pg", src = source_id, x = 300, y = 0, w = 830, h = 112 * 3, divx = 10, divy = 3, digit = 6, ref = 75, space = -28, cycle = 99},
		{id = "judgen-gr", src = source_id, x = 300, y = 336, w = 830, h = 112 * 2, divx = 10, divy = 2, digit = 6, ref = 75, space = -28, cycle = 66},
		{id = "judgen-gd", src = source_id, x = 300, y = 336, w = 830, h = 112 * 2, divx = 10, divy = 2, digit = 6, ref = 75, space = -28, cycle = 66},
		{id = "judgen-bd", src = source_id, x = 300, y = 336, w = 830, h = 112 * 2, divx = 10, divy = 2, digit = 6, ref = 75, space = -28, cycle = 66},
		{id = "judgen-pr", src = source_id, x = 300, y = 336, w = 830, h = 112 * 2, divx = 10, divy = 2, digit = 6, ref = 75, space = -28, cycle = 66},
		{id = "judgen-ms", src = source_id, x = 300, y = 336, w = 830, h = 112 * 2, divx = 10, divy = 2, digit = 6, ref = 75, space = -28, cycle = 66},
		{id = "ghost-target", src = "src-common", x = 260, y = 514, w = 240, h = 56, divx = 12, divy = 2, digit = 5, zeropadding = 3, ref = 153},
		{id = "ghost-pb", src = "src-common", x = 260, y = 514, w = 240, h = 56, divx = 12, divy = 2, digit = 5, zeropadding = 3, ref = 152}
	}
	return t
end
function Judge.judge()
	t = {
		{
			id = 2010,
			index = 0,
			images = {
				{id = "judgef-pg", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + 43 + 40, y = property.constants.lane_y_location + 103 + skin_config.offset["Judge Text Offset"].y, w = 255, h = 112},
					{time = 500}
				}},
				{id = "judgef-gr", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + 43 + 40, y = property.constants.lane_y_location + 103 + skin_config.offset["Judge Text Offset"].y, w = 255, h = 112},
					{time = 500}
				}},
				{id = "judgef-gd", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + 43 + 40, y = property.constants.lane_y_location + 103 + skin_config.offset["Judge Text Offset"].y, w = 255, h = 112},
					{time = 500}
				}},
				{id = "judgef-bd", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + 48 + 40, y = property.constants.lane_y_location + 103 + skin_config.offset["Judge Text Offset"].y, w = 255, h = 112},
					{time = 500}
				}},
				{id = "judgef-pr", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + 48 + 40, y = property.constants.lane_y_location + 103 + skin_config.offset["Judge Text Offset"].y, w = 255, h = 112},
					{time = 500}
				}},
				{id = "judgef-ms", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + 48 + 40, y = property.constants.lane_y_location + 103 + skin_config.offset["Judge Text Offset"].y, w = 255, h = 112},
					{time = 500}
				}}
			},
			numbers = {
				{id = "judgen-pg", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {32}, dst = {
					{time = 0, x = 73 + 248, y = 0, w = 83, h = 112},
					{time = 500}
				}},
				{id = "judgen-gr", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {32}, dst = {
					{time = 0, x = 73 + 248, y = 0, w = 83, h = 112},
					{time = 500}
				}},
				{id = "judgen-gd", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {32}, dst = {
					{time = 0, x = 73 + 248, y = 0, w = 83, h = 112},
					{time = 500}
				}},
				{id = "judgen-bd", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {32}, dst = {
					{time = 0, x = 73 + 227, y = 0, w = 83, h = 112},
					{time = 500}
				}},
				{id = "judgen-pr", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {32}, dst = {
					{time = 0, x = 73 + 248, y = 0, w = 83, h = 112},
					{time = 500}
				}},
				{id = "judgen-ms", filter = 1, loop = -1, timer = 46, stretch = 6, offsets = {32}, dst = {
					{time = 0, x = 73 + 248, y = 0, w = 83, h = 112},
					{time = 500}
				}}
			},
			shift = true
		}
	}
	return t
end

function Judge.destination()
	t = {{id = 2010}}
	table.insert(t, {id = "judge-fast", loop = 500, timer = 46, op = {1242, 2112}, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 85/2 + 85/2 + 15, y = property.constants.lane_y_location + 103 + 112 + skin_config.offset["Judge Text Offset"].y - 10, w = 85, h = 25},
					{time = 500, a = 255},
					{time = 500, a = 0}
				}})
	table.insert(t, {id = "judge-slow", loop = 500, timer = 46, op = {1243, 2112}, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 85/2 + 85/2 + 15, y = property.constants.lane_y_location + 103 + 112 + skin_config.offset["Judge Text Offset"].y - 10, w = 85, h = 25},
					{time = 500, a = 255},
					{time = 500, a = 0}
				}})
	table.insert(t, {id = "ghost-target", loop = 500, timer = 46, op = {2122, 2131}, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 100/2 - 100/2 - 15, y = property.constants.lane_y_location + 103 + 112 + skin_config.offset["Judge Text Offset"].y - 11, w = 20, h = 28},
					{time = 500, a = 255},
					{time = 500, a = 0}
					
				}})
	table.insert(t, {id = "ghost-pb", loop = 500, timer = 46, op = {2122, 2132}, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 100/2 - 100/2 - 15, y = property.constants.lane_y_location + 103 + 112 + skin_config.offset["Judge Text Offset"].y - 11, w = 20, h = 28},
					{time = 500, a = 255},
					{time = 500, a = 0}
				}})
	table.insert(t, {id = "autoplay", loop = 1000, op = {33}, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 144/2, y = property.constants.lane_y_location + 103 + skin_config.offset["Judge Text Offset"].y - 20, w = 144, h = 25, a = 0},
					{time = 500, a = 0},
					{time = 1000, a = 255},
					{time = 1500, a = 150},
					{time = 2000, a = 255},
				}})
	table.insert(t, {id = "loading", loop = 1000, op = {80}, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 122/2, y = property.constants.lane_y_location + 103 + 112 + skin_config.offset["Judge Text Offset"].y + 20, w = 122, h = 25, a = 0},
					{time = 500, a = 0},
					{time = 1000, a = 255},
					{time = 1500, a = 150},
					{time = 2000, a = 255},
				}})	
	table.insert(t, {id = "ready", loop = 1500, op = {81}, timer = 40, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 122/2, y = property.constants.lane_y_location + 103 + 112 + skin_config.offset["Judge Text Offset"].y + 20, w = 122, h = 25, a = 0},
					{time = 250, a = 255},
					{time = 1000, a = 255},
					{time = 1500, a = 0}
				}})	
	local start_y = property.constants.lane_y_location + 103 + 112 + skin_config.offset["Judge Text Offset"].y + 20 + 13
	local start_x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 366/2
	table.insert(t, {id = "graph_flash", loop = 1500, op = {81}, timer = 143, offsets = {3,32}, dst = {
					{time = 0, x = start_x, y = start_y - 5, w = 366, h = 100, a = 0},
					{time = 125, a = 0, x = start_x + 366/2, y = start_y - 5, w = 0, h = 0},
					{time = 250, a = 0, x = start_x + 366/2, y = start_y - 5, w = 0, h = 0},
					{time = 437, a = 128, x = start_x + 366/4, y = start_y - 5 + 25, w = 366/2, h = 100/2},
					{time = 625, a = 255, x = start_x, y = start_y - 5, w = 366, h = 100},
					{time = 812, a = 128, x = start_x + 366/4, y = start_y - 5 + 25, w = 366/2, h = 100/2},
					{time = 1000, a = 0, x = start_x + 366/2, y = start_y - 5, w = 0, h = 0},
					{time = 1500, a = 0}
				}})
	table.insert(t, {id = "finish", loop = 1500, op = {81, 2244, -2245}, timer = 143, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 244/2, y = start_y, w = 244, h = 0, a = 0},
					{time = 125, a = 128, y = start_y, h = 12},
					{time = 250, a = 255, y = start_y, h = 50},
					{time = 437, a = 255, y = start_y + 15, h = 50},
					{time = 625, a = 255, y = start_y + 20, h = 50},
					{time = 812, a = 255, y = start_y + 15, h = 50},
					{time = 1000, a = 255, y = start_y, h = 50},
					{time = 1500, a = 0}
				}})	
	table.insert(t, {id = "finish", loop = 1500, op = {81, -2244, 2245}, timer = 143, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 244/2, y = start_y, w = 244, h = 0, a = 0},
					{time = 125, a = 128, y = start_y, h = 12},
					{time = 250, a = 255, y = start_y, h = 50},
					{time = 437, a = 255, y = start_y + 15, h = 50},
					{time = 625, a = 255, y = start_y + 20, h = 50},
					{time = 812, a = 255, y = start_y + 15, h = 50},
					{time = 1000, a = 255, y = start_y, h = 50},
					{time = 1500, a = 0}
				}})	
	table.insert(t, {id = "finish", loop = 1500, op = {81, 2244, 2245}, timer = 143, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 244/2, y = start_y, w = 244, h = 0, a = 0},
					{time = 125, a = 128, y = start_y, h = 12},
					{time = 250, a = 255, y = start_y, h = 50},
					{time = 437, a = 255, y = start_y + 15, h = 50},
					{time = 625, a = 255, y = start_y + 20, h = 50},
					{time = 812, a = 255, y = start_y + 15, h = 50},
					{time = 1000, a = 255, y = start_y, h = 50},
					{time = 1500, a = 0}
				}})	
	table.insert(t, {id = "full-combo", loop = 1500, op = {81, -2244, -2245}, timer = 143, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 244/2, y = start_y - 25, w = 244, h = 0, a = 0},
					{time = 125, a = 128, y = start_y - 25, h = 12 * 2},
					{time = 250, a = 255, y = start_y - 25, h = 50 * 2},
					{time = 437, a = 255, y = start_y - 25 + 15, h = 50 * 2},
					{time = 625, a = 255, y = start_y - 25 + 20, h = 50 * 2},
					{time = 812, a = 255, y = start_y - 25 + 15, h = 50 * 2},
					{time = 1000, a = 255, y = start_y - 25, h = 50 * 2},
					{time = 1500, a = 0}
				}})	
				
	-- Confetti!!!
	if skin_config.option["Full Combo Confetti"] == 2182 then
		for confetti_count = 0, 500 do
			i = 90 * confetti_count / 500
			random_scale = math.random(500, 900)
			random_scale_2 = math.random(500, 900)
			height_over_distance = 2
			-- left side
			dst_table = {}
			delay = math.random(0,300)
			table.insert(dst_table, {time = delay, x = 0, y = 0, w = 20, h = 20, r = math.random(50,255), g = math.random(50,255), b = math.random(50,255)})
			for j = 1, 20 do
				k = j / 20
				table.insert(dst_table, {time = 50 * j + delay, x = (j / 10) * math.cos(i) * random_scale, y = height_over_distance * 4 * (k)*(k - 1) * math.sin(i) * random_scale - 20, w = 10, h = 10})
			end
			table.insert(t, {id = -111, loop = 50 * 20 + delay, op = {81, -2244, -2245}, timer = 143, dst = dst_table})
			-- right side
			dst_table = {}
			delay = math.random(0,300)
			table.insert(dst_table, {time = delay, x = 1920, y = 0, w = 20, h = 20, r = math.random(50,255), g = math.random(50,255), b = math.random(50,255)})
			for j = 1, 20 do
				k = j / 20
				table.insert(dst_table, {time = 50 * j + delay, x = 1920 - (j / 10) * math.cos(i) * random_scale_2, y = height_over_distance * 4 * (k)*(k - 1) * math.sin(i) * random_scale_2 - 20, w = 10, h = 10})
			end
			table.insert(t, {id = -111, loop = 50 * 20 + delay, op = {81, -2244, -2245}, timer = 143, dst = dst_table})
		end
	end
	
	local type_b_offset = 275
	local direction = 1
	if property.is2pLane() then
		direction = -1
	end
	table.insert(t, {id = "judge-fast", loop = 500, timer = 46, op = {1242, 2113}, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 85/2 + type_b_offset * direction, y = property.constants.lane_y_location + 103 + 56 - 13 + skin_config.offset["Judge Text Offset"].y + 15, w = 85, h = 25},
					{time = 500, a = 255},
					{time = 500, a = 0}
				}})
	table.insert(t, {id = "judge-slow", loop = 500, timer = 46, op = {1243, 2113}, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 85/2 + type_b_offset * direction, y = property.constants.lane_y_location + 103 + 56 - 13 + skin_config.offset["Judge Text Offset"].y + 15, w = 85, h = 25},
					{time = 500, a = 255},
					{time = 500, a = 0}
				}})
	table.insert(t, {id = "ghost-target", loop = 500, timer = 46, op = {2123, 2131}, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 100/2 + type_b_offset * direction, y = property.constants.lane_y_location + 103 + 56 - 13 + skin_config.offset["Judge Text Offset"].y - 15, w = 20, h = 28},
					{time = 500, a = 255},
					{time = 500, a = 0}
				}})
	table.insert(t, {id = "ghost-pb", loop = 500, timer = 46, op = {2123, 2132}, offsets = {3,32}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 100/2 + type_b_offset * direction, y = property.constants.lane_y_location + 103 + 56 - 13 + skin_config.offset["Judge Text Offset"].y - 15, w = 20, h = 28},
					{time = 500, a = 255},
					{time = 500, a = 0}
				}})
	table.insert(t, {id = "judge-fast", loop = 500, timer = 46, op = {1242, 2114}, offsets = {3}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 85/2 + type_b_offset * direction, y = property.constants.lane_y_location + 15, w = 85, h = 25},
					{time = 500, a = 255},
					{time = 500, a = 0}
				}})
	table.insert(t, {id = "judge-slow", loop = 500, timer = 46, op = {1243, 2114}, offsets = {3}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 85/2 + type_b_offset * direction, y = property.constants.lane_y_location + 15, w = 85, h = 25},
					{time = 500, a = 255},
					{time = 500, a = 0}
				}})
	table.insert(t, {id = "ghost-target", loop = 500, timer = 46, op = {2124, 2131}, offsets = {3}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 100/2 + type_b_offset * direction, y = property.constants.lane_y_location - 15, w = 20, h = 28},
					{time = 500, a = 255},
					{time = 500, a = 0}
				}})
	table.insert(t, {id = "ghost-pb", loop = 500, timer = 46, op = {2124, 2132}, offsets = {3}, dst = {
					{time = 0, x = property.constants.lane_x_location + property.constants.lane_width_ac/2 - 100/2 + type_b_offset * direction, y = property.constants.lane_y_location - 15, w = 20, h = 28},
					{time = 500, a = 255},
					{time = 500, a = 0}
				}})
	return t
end

local JudgeText = Objects.new({Judge})

return JudgeText