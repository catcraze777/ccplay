local consts = require "consts"
local property = require "lua_dp/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local BGAFrame = Object.new()
function BGAFrame.image()
	t = {}
	table.insert(t, {id = "play_information", src = "src-common", x = 518, y = 434, w = 237, h = 206})
	return t
end
function BGAFrame.value()
	t = {
		{id = "score-int", src = "src-common", x = 0, y = 96, w = 264, h = 36, divx = 11, digit = 4, ref = 101},
		{id = "combo-int", src = "src-common", x = 0, y = 96, w = 264, h = 36, divx = 11, digit = 4, ref = 75},
		{id = "score-int-ex", src = "src-common", x = 0, y = 96, w = 240, h = 36, divx = 10, digit = 6, ref = 101},
		{id = "combo-int-ex", src = "src-common", x = 0, y = 96, w = 240, h = 36, divx = 10, digit = 6, ref = 75},
		{id = "bpm-int", src = "src-common", x = 0, y = 96, w = 264, h = 36, divx = 11, digit = 3, ref = 160},
		{id = "bpm-min-int", src = "src-common", x = 0, y = 96, w = 264, h = 36, divx = 11, digit = 3, ref = 91},
		{id = "bpm-max-int", src = "src-common", x = 0, y = 96, w = 264, h = 36, divx = 11, digit = 3, ref = 90},
		{id = "green-num-min-int", src = "src-common", x = 0, y = 132, w = 120, h = 18, divx = 10, align = 2, digit = 4, ref = 1321},
		{id = "green-num-int", src = "src-common", x = 0, y = 132, w = 120, h = 18, divx = 10, align = 2, digit = 4, ref = 313},
		{id = "green-num-max-int", src = "src-common", x = 0, y = 132, w = 120, h = 18, divx = 10, align = 2, digit = 4, ref = 1325},
		{id = "perfect-count", src = "src-common", x = 260, y = 514, w = 200, h = 28, divx = 10, divy = 1, digit = 4, zeropadding = 3, ref = 110},
		{id = "great-count", src = "src-common", x = 260, y = 514, w = 200, h = 28, divx = 10, divy = 1, digit = 4, zeropadding = 3, ref = 111},
		{id = "good-count", src = "src-common", x = 260, y = 514, w = 200, h = 28, divx = 10, divy = 1, digit = 4, zeropadding = 3, ref = 112},
		{id = "bad-count", src = "src-common", x = 260, y = 514, w = 200, h = 28, divx = 10, divy = 1, digit = 4, zeropadding = 3, ref = 113},
		{id = "poor-count", src = "src-common", x = 260, y = 514, w = 200, h = 28, divx = 10, divy = 1, digit = 4, zeropadding = 3, ref = 426},
		{id = "cb-count", src = "src-common", x = 260, y = 514, w = 200, h = 28, divx = 10, divy = 1, digit = 4, zeropadding = 3, ref = 425}
	}
	return t
end
function BGAFrame.destination()
	local video_x = 0
	t = {}
	table.insert(t, {
			id = "score-int", loop = 1000, dst = {
				{time = 0, a = 0, x = 593, y = 37, w = 24, h = 36},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		})
	table.insert(t, {
			id = "combo-int", loop = 1000, dst = {
				{time = 0, a = 0, x = 1399, y = 37, w = 24, h = 36},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		})
	table.insert(t, {
			id = "score-int-ex", loop = 1000, dst = {
				{time = 0, a = 0, x = 593 - 48, y = 37, w = 24, h = 36},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		})
	table.insert(t, {
			id = "combo-int-ex", loop = 1000, dst = {
				{time = 0, a = 0, x = 1399 - 48, y = 37, w = 24, h = 36},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		})
	table.insert(t, {
			id = "bpm-int", loop = 1000, dst = {
				{time = 0, a = 0, x = 906, y = 79, w = 33, h = 50},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		})
	table.insert(t, {
			id = "bpm-min-int", loop = 1000, op = {177}, dst = {
				{time = 0, a = 0, x = 789, y = 72, w = 24, h = 36},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		})
	table.insert(t, {
			id = "bpm-max-int", loop = 1000, op = {177}, dst = {
				{time = 0, a = 0, x = 1057, y = 72, w = 24, h = 36},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		})
	table.insert(t, {
			id = "green-num-min-int", loop = 1000, op = {177}, dst = {
				{time = 0, a = 0, x = 801, y = 22, w = 12, h = 18, r = 0, b = 0},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		})
	table.insert(t, {
			id = "green-num-max-int", loop = 1000, op = {177}, dst = {
				{time = 0, a = 0, x = 1070, y = 22, w = 12, h = 18, r = 0, b = 0},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		})
	table.insert(t, {
			id = "green-num-int", loop = 1000, dst = {
				{time = 0, a = 0, x = 934, y = 19, w = 12, h = 18, r = 0, b = 0},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		})
	local colors = {
		{255, 255, 255},
		{138, 255, 92},
		{92, 222, 255},
		{255, 208, 92},
		{255, 92, 98},
		{209, 92, 255}
	}
	for i, v in ipairs(colors) do
		local r = v[1]
		local g = v[2]
		local b = v[3]
		table.insert(t, {
			id = "font-song-title", filter = 1, loop = 1000 + 500, op = {149 + i}, dst = {
				{time = 0, a = 0, x = 7 + 374/2, y = 1013 - 10, w = 374 - 20, h = 48, r = r, g = g, b = b},
				{time = 500 + 500, a = 0},
				{time = 1000 + 500, a = 255}
			}
		})
		table.insert(t, {
			id = "font-song-title", filter = 1, loop = 1000 + 500, op = {149 + i}, dst = {
				{time = 0, a = 0, x = 1539 + 374/2, y = 1013 - 10, w = 374 - 20, h = 48, r = r, g = g, b = b},
				{time = 500 + 500, a = 0},
				{time = 1000 + 500, a = 255}
			}
		})
	end
	table.insert(t, {
			id = "font-song-artist", filter = 1, op = {1008}, loop = 1250 + 500, dst = {
				{time = 0, a = 0, x = 7 + 374/2, y = 985 - 5, w = 374 - 20, h = 24},
				{time = 750 + 500, a = 0},
				{time = 1250 + 500, a = 255},
				{time = 3250 + 500, a = 255},
				{time = 3750 + 500, a = 0},
				{time = 7750 + 500, a = 0},
				{time = 8250 + 500, a = 255},
			}
		})
	table.insert(t, {
			id = "font-song-artist", filter = 1, op = {-1008}, loop = 1250 + 500, dst = {
				{time = 0, a = 0, x = 7 + 374/2, y = 985 - 5, w = 374 - 20, h = 24},
				{time = 750 + 500, a = 0},
				{time = 1250 + 500, a = 255},
			}
		})
	table.insert(t, {
			id = "font-table", filter = 1, op = {1008}, loop = 1250 + 500, dst = {
				{time = 0, a = 0, x = 7 + 374/2, y = 985 - 5, w = 374 - 20, h = 24, r = 100, g = 100, b = 100},
				{time = 1250 + 500, a = 0},
				{time = 3750 + 500, a = 0},
				{time = 4250 + 500, a = 255},
				{time = 7250 + 500, a = 255},
				{time = 7750 + 500, a = 0},
				{time = 8250 + 500, a = 0},
			}
		})
	table.insert(t, {
			id = "font-song-artist", filter = 1, op = {1008}, loop = 1250 + 500, dst = {
				{time = 0, a = 0, x = 1539 + 374/2, y = 985 - 5, w = 374 - 20, h = 24},
				{time = 750 + 500, a = 0},
				{time = 1250 + 500, a = 255},
				{time = 3250 + 500, a = 255},
				{time = 3750 + 500, a = 0},
				{time = 7750 + 500, a = 0},
				{time = 8250 + 500, a = 255},
			}
		})
	table.insert(t, {
			id = "font-song-artist", filter = 1, op = {-1008}, loop = 1250 + 500, dst = {
				{time = 0, a = 0, x = 1539 + 374/2, y = 985 - 5, w = 374 - 20, h = 24},
				{time = 750 + 500, a = 0},
				{time = 1250 + 500, a = 255},
			}
		})
	table.insert(t, {
			id = "font-table", filter = 1, op = {1008}, loop = 1250 + 500, dst = {
				{time = 0, a = 0, x = 1539 + 374/2, y = 985 - 5, w = 374 - 20, h = 24, r = 100, g = 100, b = 100},
				{time = 1250 + 500, a = 0},
				{time = 3750 + 500, a = 0},
				{time = 4250 + 500, a = 255},
				{time = 7250 + 500, a = 255},
				{time = 7750 + 500, a = 0},
				{time = 8250 + 500, a = 0},
			}
		})
	local bga_center_x = 1920 / 2
	local bga_center_y = 243 + 837 / 2
	for i, v in ipairs(colors) do
		local r = v[1]
		local g = v[2]
		local b = v[3]
		table.insert(t, {
			id = "font-song-title-large", filter = 1, loop = 2500, op = {149 + i, 80, 190, 192, 194, -1008}, dst = {
				{time = 0, a = 0, x = bga_center_x + video_x, y = bga_center_y - 24, w = 1146, h = 96, r = r, g = g, b = b},
				{time = 500, a = 0},
				{time = 1000, a = 255},
				{time = 2000, a = 255},
				{time = 2500, a = 0},
			}
		})
		table.insert(t, {
			id = "font-song-artist-large", filter = 1, loop = 2500, op = {149 + i, 80, 190, 192, 194, -1008}, dst = {
				{time = 0, a = 0, x = bga_center_x + video_x, y = bga_center_y - 48 - 24, w = 1146, h = 48},
				{time = 500, a = 0},
				{time = 1000, a = 255},
				{time = 2000, a = 255},
				{time = 2500, a = 0},
			}
		})
		table.insert(t, {
			id = "font-song-title-large", filter = 1, loop = 2500, op = {149 + i, 80, 190, 192, 194, 1008}, dst = {
				{time = 0, a = 0, x = bga_center_x + video_x, y = bga_center_y - 48, w = 1146, h = 96, r = r, g = g, b = b},
				{time = 500, a = 0},
				{time = 1000, a = 255},
				{time = 2000, a = 255},
				{time = 2500, a = 0},
			}
		})
		table.insert(t, {
			id = "font-song-artist-large", filter = 1, loop = 2500, op = {149 + i, 80, 190, 192, 194, 1008}, dst = {
				{time = 0, a = 0, x = bga_center_x + video_x, y = bga_center_y - 96, w = 1146, h = 48},
				{time = 500, a = 0},
				{time = 1000, a = 255},
				{time = 2000, a = 255},
				{time = 2500, a = 0},
			}
		})
		table.insert(t, {
			id = "font-table-large", filter = 1, loop = 2500, op = {149 + i, 80, 190, 192, 194, 1008}, dst = {
				{time = 0, a = 0, x = bga_center_x + video_x, y = bga_center_y + 51, w = 1146, h = 48, r = 100, g = 100, b = 100},
				{time = 500, a = 0},
				{time = 1000, a = 255},
				{time = 2000, a = 255},
				{time = 2500, a = 0},
			}
		})
	end
	
	table.insert(t, {id = -101, blend = 2, filter = 1, loop = 2500, stretch = 1, op = {80, 195}, dst = { {time = 500, x = 387, y = 243, w = 1146, h = 837, a = 0}, {time = 1000, a = 255}, {time = 2000, a = 255}, {time = 2500, a = 0} }})
	
	if not property.isGraphEnabled() or not property.graphLeftSide() then
		table.insert(t, {id = -100, filter = 1, loop = 1500, stretch = 3, op = {80, 191, 194}, dst = { {time = 1000, x = property.constants.bga_x_1, y = property.constants.bga_y_1, w = property.constants.bga_w, h = property.constants.bga_h, a = 0}, {time = 1500, a = 255} }})
		table.insert(t, {id = -100, filter = 1, loop = -1, timer = 40, stretch = 3, op = {81, 191, 194}, dst = { {x = property.constants.bga_x_1, y = property.constants.bga_y_1, w = property.constants.bga_w, h = property.constants.bga_h}, {time = 500, a = 0} }})
		table.insert(t, {id = -102, filter = 1, loop = 1500, stretch = 1, op = {80, 193, 194, 190}, dst = { {time = 1000, x = property.constants.bga_x_1, y = property.constants.bga_y_1, w = property.constants.bga_w, h = property.constants.bga_h, a = 0}, {time = 1500, a = 255} }})
		table.insert(t, {id = -102, filter = 1, loop = -1, timer = 40, stretch = 1, op = {81, 193, 194, 190}, dst = { {x = property.constants.bga_x_1, y = property.constants.bga_y_1, w = property.constants.bga_w, h = property.constants.bga_h}, {time = 500, a = 0} }})
		
		table.insert(t, {id = -100, filter = 1, loop = 1500, stretch = 3, op = {80, 191, 194}, dst = { {time = 1000, x = property.constants.bga_x_1, y = property.constants.bga_y_2, w = property.constants.bga_w, h = property.constants.bga_h, a = 0}, {time = 1500, a = 255} }})
		table.insert(t, {id = -100, filter = 1, loop = -1, timer = 40, stretch = 3, op = {81, 191, 194}, dst = { {x = property.constants.bga_x_1, y = property.constants.bga_y_2, w = property.constants.bga_w, h = property.constants.bga_h}, {time = 500, a = 0} }})
		table.insert(t, {id = -102, filter = 1, loop = 1500, stretch = 1, op = {80, 193, 194, 190}, dst = { {time = 1000, x = property.constants.bga_x_1, y = property.constants.bga_y_2, w = property.constants.bga_w, h = property.constants.bga_h, a = 0}, {time = 1500, a = 255} }})
		table.insert(t, {id = -102, filter = 1, loop = -1, timer = 40, stretch = 1, op = {81, 193, 194, 190}, dst = { {x = property.constants.bga_x_1, y = property.constants.bga_y_2, w = property.constants.bga_w, h = property.constants.bga_h}, {time = 500, a = 0} }})
	
		table.insert(t, {id = "notes-graph", loop = 1500, op = {2152}, dst = { {time = 1000, x = property.constants.bga_x_1, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
		table.insert(t, {id = "notes-graph", loop = 1500, op = {80, -2152, -2155, -2151}, dst = { {time = 1000, x = property.constants.bga_x_1, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
		table.insert(t, {id = "judgegraph-1", loop = 1500, op = {81, 2153}, dst = { {time = 1000, x = property.constants.bga_x_1, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
		table.insert(t, {id = "judgegraph-2", loop = 1500, op = {81, 2154}, dst = { {time = 1000, x = property.constants.bga_x_1, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
		table.insert(t, {id = "timingvisualizer", loop = 1500, op = {2155}, dst = { {time = 1000, x = property.constants.bga_x_1, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
		table.insert(t, {id = "bpmgraph", loop = 1500, op = {177, -2155, -2151}, dst = { {time = 1000, x = property.constants.bga_x_1, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
	end
	
	if not property.isGraphEnabled() or property.graphLeftSide() then
		table.insert(t, {id = -100, filter = 1, loop = 1500, stretch = 3, op = {80, 191, 194}, dst = { {time = 1000, x = property.constants.bga_x_2, y = property.constants.bga_y_1, w = property.constants.bga_w, h = property.constants.bga_h, a = 0}, {time = 1500, a = 255} }})
		table.insert(t, {id = -100, filter = 1, loop = -1, timer = 40, stretch = 3, op = {81, 191, 194}, dst = { {x = property.constants.bga_x_2, y = property.constants.bga_y_1, w = property.constants.bga_w, h = property.constants.bga_h}, {time = 500, a = 0} }})
		table.insert(t, {id = -102, filter = 1, loop = 1500, stretch = 1, op = {80, 193, 194, 190}, dst = { {time = 1000, x = property.constants.bga_x_2, y = property.constants.bga_y_1, w = property.constants.bga_w, h = property.constants.bga_h, a = 0}, {time = 1500, a = 255} }})
		table.insert(t, {id = -102, filter = 1, loop = -1, timer = 40, stretch = 1, op = {81, 193, 194, 190}, dst = { {x = property.constants.bga_x_2, y = property.constants.bga_y_1, w = property.constants.bga_w, h = property.constants.bga_h}, {time = 500, a = 0} }})
		
		table.insert(t, {id = -100, filter = 1, loop = 1500, stretch = 3, op = {80, 191, 194}, dst = { {time = 1000, x = property.constants.bga_x_2, y = property.constants.bga_y_2, w = property.constants.bga_w, h = property.constants.bga_h, a = 0}, {time = 1500, a = 255} }})
		table.insert(t, {id = -100, filter = 1, loop = -1, timer = 40, stretch = 3, op = {81, 191, 194}, dst = { {x = property.constants.bga_x_2, y = property.constants.bga_y_2, w = property.constants.bga_w, h = property.constants.bga_h}, {time = 500, a = 0} }})
		table.insert(t, {id = -102, filter = 1, loop = 1500, stretch = 1, op = {80, 193, 194, 190}, dst = { {time = 1000, x = property.constants.bga_x_2, y = property.constants.bga_y_2, w = property.constants.bga_w, h = property.constants.bga_h, a = 0}, {time = 1500, a = 255} }})
		table.insert(t, {id = -102, filter = 1, loop = -1, timer = 40, stretch = 1, op = {81, 193, 194, 190}, dst = { {x = property.constants.bga_x_2, y = property.constants.bga_y_2, w = property.constants.bga_w, h = property.constants.bga_h}, {time = 500, a = 0} }})
	
		table.insert(t, {id = "notes-graph", loop = 1500, op = {2152}, dst = { {time = 1000, x = property.constants.bga_x_2, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
		table.insert(t, {id = "notes-graph", loop = 1500, op = {80, -2152, -2155, -2151}, dst = { {time = 1000, x = property.constants.bga_x_2, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
		table.insert(t, {id = "judgegraph-1", loop = 1500, op = {81, 2153}, dst = { {time = 1000, x = property.constants.bga_x_2, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
		table.insert(t, {id = "judgegraph-2", loop = 1500, op = {81, 2154}, dst = { {time = 1000, x = property.constants.bga_x_2, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
		table.insert(t, {id = "timingvisualizer", loop = 1500, op = {2155}, dst = { {time = 1000, x = property.constants.bga_x_2, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
		table.insert(t, {id = "bpmgraph", loop = 1500, op = {177, -2155, -2151}, dst = { {time = 1000, x = property.constants.bga_x_2, y = property.constants.bga_y_1, w = 374, h = 100 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1500, a = 200} }})
	end
	
	
	local playinfo_x = property.constants.bga_x_1 + property.constants.bga_w - 237 - 15 + skin_config.offset["Play Information Offset"].x
	local playinfo_y = property.constants.bga_y_2 + 15 + skin_config.offset["Play Information Offset"].y
	if property.isGraphEnabled() and property.graphLeftSide() then
		playinfo_x = property.constants.bga_x_2 + 15 + skin_config.offset["Play Information Offset"].x
	end
	table.insert(t, {id = "play_information", loop = 1500, stretch = 1, op = {2142}, dst = { {time = 1000, x = playinfo_x, y = playinfo_y, w = 237, h = 206, a = 0}, {time = 1500, a = 255} }})
	table.insert(t, {id = "perfect-count", loop = 1500, stretch = 1, op = {2142}, dst = { {time = 1000, x = playinfo_x + 143, y = playinfo_y + 167, w = 20, h = 28, a = 0}, {time = 1500, a = 255} }})
	table.insert(t, {id = "great-count", loop = 1500, stretch = 1, op = {2142}, dst = { {time = 1000, x = playinfo_x + 143, y = playinfo_y + 136, w = 20, h = 28, a = 0}, {time = 1500, a = 255} }})
	table.insert(t, {id = "good-count", loop = 1500, stretch = 1, op = {2142}, dst = { {time = 1000, x = playinfo_x + 143, y = playinfo_y + 105, w = 20, h = 28, a = 0}, {time = 1500, a = 255} }})
	table.insert(t, {id = "bad-count", loop = 1500, stretch = 1, op = {2142}, dst = { {time = 1000, x = playinfo_x + 143, y = playinfo_y + 74, w = 20, h = 28, a = 0}, {time = 1500, a = 255} }})
	table.insert(t, {id = "poor-count", loop = 1500, stretch = 1, op = {2142}, dst = { {time = 1000, x = playinfo_x + 143, y = playinfo_y + 43, w = 20, h = 28, a = 0}, {time = 1500, a = 255} }})
	table.insert(t, {id = "cb-count", loop = 1500, stretch = 1, op = {2142}, dst = { {time = 1000, x = playinfo_x + 143, y = playinfo_y + 12, w = 20, h = 28, a = 0}, {time = 1500, a = 255} }})

	return t
end

local BGAFrame_Parts = Objects.new({BGAFrame})

return BGAFrame_Parts