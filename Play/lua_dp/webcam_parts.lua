local consts = require "consts"
local property = require "lua_dp/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"
local main_state = require("main_state")

local WebcamParts = Object.new()
function WebcamParts.image()
	local t = {}
	table.insert(t, {id = "webcam-frame", src = "src-laneframe-base", x = 0, y = 1080, w = 1146, h = 298})
	return t
end

function WebcamParts.destination()
	local gauge_width = 500;
	t = { }
	table.insert(t, {id = "webcam-frame", loop = 0, op = {2202}, dst = { {time = 0, x = 387, y = 0, w = 1146, h = 298, a = 255, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w} }})
	
	table.insert(t, {id = "notes-graph", loop = 1000, op = {2152, 2202}, dst = { {time = 500, x = 387 + 10, y = 10, w = 1146 - 20, h = 298 - 20 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1000, a = 200} }})
	table.insert(t, {id = "notes-graph", loop = 1000, op = {80, -2152, -2155, -2151, 2202}, dst = { {time = 500, x = 387 + 10, y = 10, w = 1146 - 20, h = 298 - 20 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1000, a = 200} }})
	table.insert(t, {id = "judgegraph-1", loop = 1000, op = {81, 2153, 2202}, dst = { {time = 500, x = 387 + 10, y = 10, w = 1146 - 20, h = 298 - 20 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1000, a = 200} }})
	table.insert(t, {id = "judgegraph-2", loop = 1000, op = {81, 2154, 2202}, dst = { {time = 500, x = 387 + 10, y = 10, w = 1146 - 20, h = 298 - 20 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1000, a = 200} }})
	table.insert(t, {id = "timingvisualizer", loop = 1000, op = {2155, 2202}, dst = { {time = 500, x = 387 + 10, y = 10, w = 1146 - 20, h = 298 - 20 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1000, a = 200} }})
	table.insert(t, {id = "bpmgraph", loop = 1000, op = {177, -2155, -2151, 2202}, dst = { {time = 500, x = 387 + 10, y = 10, w = 1146 - 20, h = 298 - 20 + skin_config.offset["Notes Graph Offset"].h, a = 0}, {time = 1000, a = 200} }})
	return t
end

local Webcam = Objects.new({WebcamParts})

return Webcam