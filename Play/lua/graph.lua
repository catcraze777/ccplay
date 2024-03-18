local consts = require "consts"
local property = require "lua/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local Graph = Object.new()
function Graph.image()
	t = {}
	table.insert(t, {id = "graph_bg", src = "src-graph", x = 0, y = 0, w = 298, h = 810})
	table.insert(t, {id = "graph_max", src = "src-common", x = 0, y = 156, w = 298, h = 32})
	table.insert(t, {id = "graph_aaa", src = "src-common", x = 0, y = 188, w = 298, h = 29})
	table.insert(t, {id = "graph_aa", src = "src-common", x = 0, y = 188 + 29 * 1, w = 298, h = 29})
	table.insert(t, {id = "graph_a", src = "src-common", x = 0, y = 188 + 29 * 2, w = 298, h = 29})
	table.insert(t, {id = "graph_aaa_hit", src = "src-common", x = 0, y = 188 + 29 * 3, w = 298, h = 29})
	table.insert(t, {id = "graph_aa_hit", src = "src-common", x = 0, y = 188 + 29 * 4, w = 298, h = 29})
	table.insert(t, {id = "graph_a_hit", src = "src-common", x = 0, y = 188 + 29 * 5, w = 298, h = 29})
	table.insert(t, {id = "graph_flash", src = "src-common", x = 0, y = 585, w = 33, h = 33})
	table.insert(t, {id = "graph_score_target_text", src = "src-common", x = 136, y = 690, w = 114, h = 25})
	table.insert(t, {id = "graph_score_best_text", src = "src-common", x = 136, y = 716, w = 114, h = 25})
	return t
end
function Graph.value()
	local source_id = "src-judgetext"
	t = {
		{id = "graph_score_target_value", src = "src-common", x = 260, y = 514, w = 240, h = 56, divx = 12, divy = 2, digit = 5, zeropadding = 3, ref = 153},
		{id = "graph_score_best_value", src = "src-common", x = 260, y = 514, w = 240, h = 56, divx = 12, divy = 2, digit = 5, zeropadding = 3, ref = 152}
	}
	return t
end
function Graph.graph()
	t = {}
	table.insert(t , {
		id = "graph-score", src = "src-common", x = 0, y = 619, w = 33, h = 405, type = 110,
	})
	table.insert(t , {
		id = "graph-pb", src = "src-common", x = 33, y = 619, w = 33, h = 405, type = 112,
	})
	table.insert(t , {
		id = "graph-pb-ghost", src = "src-common", x = 99, y = 619, w = 33, h = 405, type = 113,
	})
	table.insert(t , {
		id = "graph-target", src = "src-common", x = 66, y = 619, w = 33, h = 405, type = 114,
	})
	table.insert(t , {
		id = "graph-target-ghost", src = "src-common", x = 99, y = 619, w = 33, h = 405, type = 115,
	})
	return t
end
function Graph.destination()
	t = {}
	local graph_x = property.constants.bga_frame_x
	local direction = 1
	if not property.graphLeftSide() then
		graph_x = property.constants.bga_frame_x + 1080
		direction = -1
	end
	local graph_y = 157
	table.insert(t, {id = "graph_bg", loop = 1000, op = {2012}, dst = { 
			{time = 0 + 500, x = graph_x + 250 * direction, y = graph_y, w = 298, h = 810, a = 0},
			{time = 250 + 500, x = graph_x + 62 * direction, y = graph_y, a = 128},
			{time = 375 + 500, x = graph_x + 16 * direction, y = graph_y, a = 192},
			{time = 500 + 500, x = graph_x, y = graph_y, a = 255},
		}})
	table.insert(t, {id = "graph_max", loop = 1250, op = {2012}, dst = { 
			{time = 0 + 1000, x = graph_x, y = graph_y + 778, w = 298, h = 32, a = 0},
			{time = 250 + 1000, x = graph_x, y = graph_y + 778, a = 255},
		}})
	local flash_x = -52
	local flash_y = 457
	table.insert(t, {id = "graph_flash", loop = 500, timer = 348, op = {2012}, dst = { 
			{time = 0, x = graph_x + flash_x + 77, y = graph_y + flash_y + 77, w = 0, h = 0, a = 0},
			{time = 100, x = graph_x + flash_x, y = graph_y + flash_y, a = 255, w = 132, h = 132,},
			{time = 500, x = graph_x + flash_x + 77, y = graph_y + flash_y + 77, a = 0, w = 0, h = 0,},
		}})
	flash_x = flash_x + 9
	flash_y = flash_y + 90
	table.insert(t, {id = "graph_flash", loop = 500, timer = 349, op = {2012}, dst = { 
			{time = 0, x = graph_x + flash_x + 77, y = graph_y + flash_y + 77, w = 0, h = 0, a = 0},
			{time = 100, x = graph_x + flash_x, y = graph_y + flash_y, a = 255, w = 132, h = 132,},
			{time = 500, x = graph_x + flash_x + 77, y = graph_y + flash_y + 77, a = 0, w = 0, h = 0,},
		}})
	flash_x = flash_x + 9
	flash_y = flash_y + 90
	table.insert(t, {id = "graph_flash", loop = 500, timer = 350, op = {2012}, dst = { 
			{time = 0, x = graph_x + flash_x + 77, y = graph_y + flash_y + 77, w = 0, h = 0, a = 0},
			{time = 100, x = graph_x + flash_x, y = graph_y + flash_y, a = 255, w = 132, h = 132,},
			{time = 500, x = graph_x + flash_x + 77, y = graph_y + flash_y + 77, a = 0, w = 0, h = 0,},
		}})
	table.insert(t, {id = "graph_aaa", loop = 1350, op = {2012, -220}, dst = { 
			{time = 0 + 1100, x = graph_x, y = graph_y + 693, w = 298, h = 32, a = 0},
			{time = 250 + 1100, x = graph_x, y = graph_y + 693, a = 255},
		}})
	table.insert(t, {id = "graph_aa", loop = 1450, op = {2012, -221}, dst = { 
			{time = 0 + 1200, x = graph_x, y = graph_y + 603, w = 298, h = 32, a = 0},
			{time = 250 + 1200, x = graph_x, y = graph_y + 603, a = 255},
		}})
	table.insert(t, {id = "graph_a", loop = 1550, op = {2012, -222}, dst = { 
			{time = 0 + 1300, x = graph_x, y = graph_y + 513, w = 298, h = 32, a = 0},
			{time = 250 + 1300, x = graph_x, y = graph_y + 513, a = 255},
		}})
	table.insert(t, {id = "graph_aaa_hit", loop = 1350, op = {2012, 220}, dst = { 
			{time = 0 + 1100, x = graph_x, y = graph_y + 693, w = 298, h = 32, a = 0},
			{time = 250 + 1100, x = graph_x, y = graph_y + 693, a = 255},
		}})
	table.insert(t, {id = "graph_aa_hit", loop = 1450, op = {2012, 221}, dst = { 
			{time = 0 + 1200, x = graph_x, y = graph_y + 603, w = 298, h = 32, a = 0},
			{time = 250 + 1200, x = graph_x, y = graph_y + 603, a = 255},
		}})
	table.insert(t, {id = "graph_a_hit", loop = 1550, op = {2012, 222}, dst = { 
			{time = 0 + 1300, x = graph_x, y = graph_y + 513, w = 298, h = 32, a = 0},
			{time = 250 + 1300, x = graph_x, y = graph_y + 513, a = 255},
		}})
	table.insert(t, {id = "graph-score", loop = 1650, op = {2012, 2031}, dst = { 
			{time = 0 + 1400, x = graph_x + 67, y = graph_y, w = 66, h = 810, a = 0},
			{time = 250 + 1400, x = graph_x + 67, y = graph_y, a = 255},
		}})
	table.insert(t, {id = "graph-pb-ghost", loop = 1650, op = {2012, 2031}, dst = { 
			{time = 0 + 1400, x = graph_x + 67 + 77, y = graph_y, w = 66, h = 0, a = 0},
			{time = 250 + 1400, x = graph_x + 67 + 77, y = graph_y, h = 810, a = 255},
		}})
	table.insert(t, {id = "graph-pb", loop = 1650, op = {2012, 2031}, dst = { 
			{time = 0 + 1400, x = graph_x + 67 + 77, y = graph_y, w = 66, h = 810, a = 0},
			{time = 250 + 1400, x = graph_x + 67 + 77, y = graph_y, a = 255},
		}})
	table.insert(t, {id = "graph-target-ghost", loop = 1650, op = {2012, 2031}, dst = { 
			{time = 0 + 1400, x = graph_x + 67 + 154, y = graph_y, w = 66, h = 0, a = 0},
			{time = 250 + 1400, x = graph_x + 67 + 154, y = graph_y, h = 810, a = 255},
		}})
	table.insert(t, {id = "graph-target", loop = 1650, op = {2012, 2031}, dst = { 
			{time = 0 + 1400, x = graph_x + 67 + 154, y = graph_y, w = 66, h = 810, a = 0},
			{time = 250 + 1400, x = graph_x + 67 + 154, y = graph_y, a = 255},
		}})
	table.insert(t, {id = "graph-score", loop = 1650, op = {2012, 2032}, dst = { 
			{time = 0 + 1400, x = graph_x + 67, y = graph_y, w = 100, h = 810, a = 0},
			{time = 250 + 1400, x = graph_x + 67, y = graph_y, a = 255},
		}})
	table.insert(t, {id = "graph-pb-ghost", loop = 1650, op = {2012, 2032}, dst = { 
			{time = 0 + 1400, x = graph_x + 67 + 120, y = graph_y, w = 100, h = 0, a = 0},
			{time = 250 + 1400, x = graph_x + 67 + 120, y = graph_y, h = 810, a = 255},
		}})
	table.insert(t, {id = "graph-pb", loop = 1650, op = {2012, 2032}, dst = { 
			{time = 0 + 1400, x = graph_x + 67 + 120, y = graph_y, w = 100, h = 810, a = 0},
			{time = 250 + 1400, x = graph_x + 67 + 120, y = graph_y, a = 255},
		}})
	table.insert(t, {id = "graph_score_best_text", loop = 1950, op = {2012}, dst = { 
			{time = 0 + 1700, x = graph_x + 75, y = graph_y + 5, w = 114, h = 25, a = 0},
			{time = 250 + 1700, a = 255},
		}})
	table.insert(t, {id = "graph_score_best_value", loop = 1950, op = {2012}, dst = { 
			{time = 0 + 1700, x = graph_x + 75 + 120, y = graph_y - 1 + 5, w = 20, h = 28, a = 0},
			{time = 250 + 1700, a = 255},
		}})
	table.insert(t, {id = "graph_score_target_text", loop = 2150, op = {2012, 2031}, dst = { 
			{time = 0 + 1900, x = graph_x + 75, y = graph_y + 5 + 30, w = 114, h = 25, a = 0},
			{time = 250 + 1900, a = 255},
		}})
	table.insert(t, {id = "graph_score_target_value", loop = 2150, op = {2012, 2031}, dst = { 
			{time = 0 + 1900, x = graph_x + 75 + 120, y = graph_y - 1 + 5 + 30, w = 20, h = 28, a = 0},
			{time = 250 + 1900, a = 255},
		}})
	table.insert(t, {id = -111, loop = 500, timer = 348, op = {2012}, blend = 2, dst = { 
			{time = 0, x = graph_x, y = graph_y, w = 298, h = 810, a = 0, r = 100, g = 100, b = 100},
			{time = 100, a = 255},
			{time = 500, a = 0},
		}})
	table.insert(t, {id = -111, loop = 500, timer = 349, op = {2012}, blend = 2, dst = { 
			{time = 0, x = graph_x, y = graph_y, w = 298, h = 810, a = 0, r = 100, g = 100, b = 100},
			{time = 100, a = 255},
			{time = 500, a = 0},
		}})
	table.insert(t, {id = -111, loop = 500, timer = 350, op = {2012}, blend = 2, dst = { 
			{time = 0, x = graph_x, y = graph_y, w = 298, h = 810, a = 0, r = 100, g = 100, b = 100},
			{time = 100, a = 255},
			{time = 500, a = 0},
		}})
	table.insert(t, {id = -111, loop = 500, timer = 352, op = {2012, 2031}, blend = 2, dst = { 
			{time = 0, x = graph_x, y = graph_y, w = 298, h = 810, a = 0, r = 128, g = 0, b = 0},
			{time = 100, a = 255},
			{time = 500, a = 0},
		}})
	table.insert(t, {id = -111, loop = 500, timer = 351, op = {2012}, blend = 2, dst = { 
			{time = 0, x = graph_x, y = graph_y, w = 298, h = 810, a = 0, r = 0, g = 128, b = 0},
			{time = 100, a = 255},
			{time = 500, a = 0},
		}})
	return t
end

local graphFrame = Objects.new({Graph})

return graphFrame