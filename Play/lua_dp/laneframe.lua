local consts = require "consts"
local property = require "lua_dp/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local LaneFrame = Object.new()
function LaneFrame.image()
	t = {}
	table.insert(t, {id = "laneframe-base", src = "src-laneframe-base", x = 387, y = 0, w = 1146, h = 1080})
	table.insert(t, {id = "bgaframe-base-bga", src = "src-laneframe-base", x = 0, y = 0 , w = 387, h = 1080})
	table.insert(t, {id = "bgaframe-base-graph", src = "src-laneframe-base", x = 1533, y = 0, w = 387, h = 1080})
	if property.rainbowFrame() then
		table.insert(t, {id = "laneframe-mult", src = "src-common", x = 0, y = 364, w = 500, h = 30, divx = 500, cycle = 60000})
	else
		table.insert(t, {id = "laneframe-mult", src = "src-common", x = 18, y = 71, w = 1, h = 1})
	end
	
	table.insert(t, {id = "laneframe-stripes", src = "src-laneframe-stripes", x = 387, y = 0, w = 1146, h = 1080})
	table.insert(t, {id = "bgaframe-bga-stripes", src = "src-laneframe-stripes", x = 0, y = 0, w = 387, h = 1080})
	table.insert(t, {id = "bgaframe-graph-stripes", src = "src-laneframe-stripes", x = 1533, y = 0 , w = 387, h = 1080})
	
	table.insert(t, {id = "laneframe", src = "src-laneframe", x = 387, y = 0, w = 1146, h = 1080})
	table.insert(t, {id = "bgaframe-bga", src = "src-laneframe", x = 0, y = 0, w = 387, h = 1080})
	table.insert(t, {id = "bgaframe-graph", src = "src-laneframe", x = 1533, y = 0 , w = 387, h = 1080})
	table.insert(t, {id = "overlay-base", src = "src-laneframe-overlay", x = 387, y = 0, w = 1146, h = 1080})
	table.insert(t, {id = "overlay-bga", src = "src-laneframe-overlay", x = 0, y = 0, w = 387, h = 1080})
	table.insert(t, {id = "overlay-graph", src = "src-laneframe-overlay", x = 1533, y = 0, w = 387, h = 1080})
	return t
end
function LaneFrame.destination()
	t = {}
	if property.rainbowFrame() then
		skin_config.offset["Frame RGB (0-255)"].x = 255
		skin_config.offset["Frame RGB (0-255)"].y = 255
		skin_config.offset["Frame RGB (0-255)"].w = 255
	end
	if property.isGraphEnabled() and property.graphLeftSide() then
		table.insert(t, {id = "bgaframe-base-graph", loop = 1000, dst = { 
			{time = 0, x = 387 + 400, y = 0, w = -387, h = 1080, a = 0},
			{time = 500, x = 387 + 400, y = 0, w = -387, h = 1080, a = 0},
			{time = 500, x = 387 + 400, y = 0, w = -387, h = 1080, a = 255},
			{time = 750, x = 387 + 100, y = 0, w = -387, h = 1080},
			{time = 875, x = 387 + 25, y = 0, w = -387, h = 1080},
			{time = 1000, x = 387, y = 0, w = -387, h = 1080},
		}})
	else
		table.insert(t, {id = "bgaframe-base-bga", loop = 1000, dst = { 
			{time = 0, x = 0 + 400, y = 0, w = 387, h = 1080, a = 0},
			{time = 500, x = 0 + 400, y = 0, w = 387, h = 1080, a = 0},
			{time = 500, x = 0 + 400, y = 0, w = 387, h = 1080, a = 255},
			{time = 750, x = 0 + 100, y = 0, w = 387, h = 1080},
			{time = 875, x = 0 + 25, y = 0, w = 387, h = 1080},
			{time = 1000, x = 0, y = 0, w = 387, h = 1080},
		}})
	end
	
	if property.isGraphEnabled() and not property.graphLeftSide() then
		table.insert(t, {id = "bgaframe-base-graph", loop = 1000, dst = { 
			{time = 0, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 0},
			{time = 500, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 0},
			{time = 500, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 255},
			{time = 750, x = 1533 - 100, y = 0, w = 387, h = 1080},
			{time = 875, x = 1533 - 25, y = 0, w = 387, h = 1080},
			{time = 1000, x = 1533, y = 0, w = 387, h = 1080},
		}})
	else
		table.insert(t, {id = "bgaframe-base-bga", loop = 1000, dst = { 
			{time = 0, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 0},
			{time = 500, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 0},
			{time = 500, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 255},
			{time = 750, x = 1920 - 100, y = 0, w = -387, h = 1080},
			{time = 875, x = 1920 - 25, y = 0, w = -387, h = 1080},
			{time = 1000, x = 1920, y = 0, w = -387, h = 1080},
		}})
	end
	
	if property.customFrame() then
		if property.isGraphEnabled() and property.graphLeftSide() then
			table.insert(t, {id = "overlay-graph", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 387 + 400, y = 0, w = -387, h = 1080, a = 0},
				{time = 500, x = 387 + 400, y = 0, w = -387, h = 1080, a = 0},
				{time = 500, x = 387 + 400, y = 0, w = -387, h = 1080, a = 255},
				{time = 750, x = 387 + 100, y = 0, w = -387, h = 1080},
				{time = 875, x = 387 + 25, y = 0, w = -387, h = 1080},
				{time = 1000, x = 387, y = 0, w = -387, h = 1080},
			}})
		else
			table.insert(t, {id = "overlay-bga", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 0 + 400, y = 0, w = 387, h = 1080, a = 0},
				{time = 500, x = 0 + 400, y = 0, w = 387, h = 1080, a = 0},
				{time = 500, x = 0 + 400, y = 0, w = 387, h = 1080, a = 255},
				{time = 750, x = 0 + 100, y = 0, w = 387, h = 1080},
				{time = 875, x = 0 + 25, y = 0, w = 387, h = 1080},
				{time = 1000, x = 0, y = 0, w = 387, h = 1080},
			}})
		end
		
		if property.isGraphEnabled() and not property.graphLeftSide() then
			table.insert(t, {id = "overlay-graph", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 0},
				{time = 500, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 0},
				{time = 500, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 255},
				{time = 750, x = 1533 - 100, y = 0, w = 387, h = 1080},
				{time = 875, x = 1533 - 25, y = 0, w = 387, h = 1080},
				{time = 1000, x = 1533, y = 0, w = 387, h = 1080},
			}})
		else
			table.insert(t, {id = "overlay-bga", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 0},
				{time = 500, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 0},
				{time = 500, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 255},
				{time = 750, x = 1920 - 100, y = 0, w = -387, h = 1080},
				{time = 875, x = 1920 - 25, y = 0, w = -387, h = 1080},
				{time = 1000, x = 1920, y = 0, w = -387, h = 1080},
			}})
		end
	else
		if property.isGraphEnabled() and property.graphLeftSide() then
			table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 343 + 400, y = 0, w = 44, h = 1080, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 500, x = 343 + 400, y = 0, w = 44, h = 1080, a = 0},
				{time = 500, x = 343 + 400, y = 0, w = 44, h = 1080, a = 255},
				{time = 750, x = 343 + 100, y = 0, w = 44, h = 1080},
				{time = 875, x = 343 + 25, y = 0, w = 44, h = 1080},
				{time = 1000, x = 343, y = 0, w = 44, h = 1080},
			}})
			table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 0 + 400, y = 0, w = 45, h = 1080, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 500, x = 0 + 400, y = 0, w = 45, h = 1080, a = 0},
				{time = 500, x = 0 + 400, y = 0, w = 45, h = 1080, a = 255},
				{time = 750, x = 0 + 100, y = 0, w = 45, h = 1080},
				{time = 875, x = 0 + 25, y = 0, w = 45, h = 1080},
				{time = 1000, x = 0, y = 0, w = 45, h = 1080},
			}})
			table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 45 + 400, y = 0, w = 298, h = 58, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 500, x = 45 + 400, y = 0, w = 298, h = 58, a = 0},
				{time = 500, x = 45 + 400, y = 0, w = 298, h = 58, a = 255},
				{time = 750, x = 45 + 100, y = 0, w = 298, h = 58},
				{time = 875, x = 45 + 25, y = 0, w = 298, h = 58},
				{time = 1000, x = 45, y = 0, w = 298, h = 58},
			}})
			table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 45 + 400, y = 868, w = 298, h = 212, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 500, x = 45 + 400, y = 868, w = 298, h = 212, a = 0},
				{time = 500, x = 45 + 400, y = 868, w = 298, h = 212, a = 255},
				{time = 750, x = 45 + 100, y = 868, w = 298, h = 212},
				{time = 875, x = 45 + 25, y = 868, w = 298, h = 212},
				{time = 1000, x = 45, y = 868, w = 298, h = 212},
			}})
		else
			table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 0 + 400, y = 0, w = 387, h = 1080, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 500, x = 0 + 400, y = 0, w = 387, h = 1080, a = 0},
				{time = 500, x = 0 + 400, y = 0, w = 387, h = 1080, a = 255},
				{time = 750, x = 0 + 100, y = 0, w = 387, h = 1080},
				{time = 875, x = 0 + 25, y = 0, w = 387, h = 1080},
				{time = 1000, x = 0, y = 0, w = 387, h = 1080},
			}})
		end
		
		if property.isGraphEnabled() and not property.graphLeftSide() then
			table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 1533 - 400, y = 0, w = 44, h = 1080, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 500, x = 1533 - 400, y = 0, w = 44, h = 1080, a = 0},
				{time = 500, x = 1533 - 400, y = 0, w = 44, h = 1080, a = 255},
				{time = 750, x = 1533 - 100, y = 0, w = 44, h = 1080},
				{time = 875, x = 1533 - 25, y = 0, w = 44, h = 1080},
				{time = 1000, x = 1533, y = 0, w = 44, h = 1080},
			}})
			table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 1875 - 400, y = 0, w = 45, h = 1080, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 500, x = 1875 - 400, y = 0, w = 45, h = 1080, a = 0},
				{time = 500, x = 1875 - 400, y = 0, w = 45, h = 1080, a = 255},
				{time = 750, x = 1875 - 100, y = 0, w = 45, h = 1080},
				{time = 875, x = 1875 - 25, y = 0, w = 45, h = 1080},
				{time = 1000, x = 1875, y = 0, w = 45, h = 1080},
			}})
			table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 1577 - 400, y = 0, w = 298, h = 58, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 500, x = 1577 - 400, y = 0, w = 298, h = 58, a = 0},
				{time = 500, x = 1577 - 400, y = 0, w = 298, h = 58, a = 255},
				{time = 750, x = 1577 - 100, y = 0, w = 298, h = 58},
				{time = 875, x = 1577 - 25, y = 0, w = 298, h = 58},
				{time = 1000, x = 1577, y = 0, w = 298, h = 58},
			}})
			table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 1577 - 400, y = 868, w = 298, h = 212, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 500, x = 1577 - 400, y = 868, w = 298, h = 212, a = 0},
				{time = 500, x = 1577 - 400, y = 868, w = 298, h = 212, a = 255},
				{time = 750, x = 1577 - 100, y = 868, w = 298, h = 212},
				{time = 875, x = 1577 - 25, y = 868, w = 298, h = 212},
				{time = 1000, x = 1577, y = 868, w = 298, h = 212},
			}})
		else
			table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
				{time = 0, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 0, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
				{time = 500, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 0},
				{time = 500, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 255},
				{time = 750, x = 1920 - 100, y = 0, w = -387, h = 1080},
				{time = 875, x = 1920 - 25, y = 0, w = -387, h = 1080},
				{time = 1000, x = 1920, y = 0, w = -387, h = 1080},
			}})
		end
	end
	
	if property.isGraphEnabled() and property.graphLeftSide() then
		table.insert(t, {id = "bgaframe-graph-stripes", loop = 1000, op = {2001}, dst = { 
			{time = 0, x = 387 + 400, y = 0, w = -387, h = 1080, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 500, x = 387 + 400, y = 0, w = -387, h = 1080, a = 0},
			{time = 500, x = 387 + 400, y = 0, w = -387, h = 1080, a = 255},
			{time = 750, x = 387 + 100, y = 0, w = -387, h = 1080},
			{time = 875, x = 387 + 25, y = 0, w = -387, h = 1080},
			{time = 1000, x = 387, y = 0, w = -387, h = 1080},
		}})
	else
		table.insert(t, {id = "bgaframe-bga-stripes", loop = 1000, op = {2001}, dst = { 
			{time = 0, x = 0 + 400, y = 0, w = 387, h = 1080, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 500, x = 0 + 400, y = 0, w = 387, h = 1080, a = 0},
			{time = 500, x = 0 + 400, y = 0, w = 387, h = 1080, a = 255},
			{time = 750, x = 0 + 100, y = 0, w = 387, h = 1080},
			{time = 875, x = 0 + 25, y = 0, w = 387, h = 1080},
			{time = 1000, x = 0, y = 0, w = 387, h = 1080},
		}})
	end
	
	if property.isGraphEnabled() and not property.graphLeftSide() then
		table.insert(t, {id = "bgaframe-graph-stripes", loop = 1000, op = {2001}, dst = { 
			{time = 0, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 500, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 0},
			{time = 500, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 255},
			{time = 750, x = 1533 - 100, y = 0, w = 387, h = 1080},
			{time = 875, x = 1533 - 25, y = 0, w = 387, h = 1080},
			{time = 1000, x = 1533, y = 0, w = 387, h = 1080},
		}})
	else
		table.insert(t, {id = "bgaframe-bga-stripes", loop = 1000, op = {2001}, dst = { 
			{time = 0, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 500, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 0},
			{time = 500, x = 1920 - 400, y = 0, w = -387, h = 1080, a = 255},
			{time = 750, x = 1920 - 100, y = 0, w = -387, h = 1080},
			{time = 875, x = 1920 - 25, y = 0, w = -387, h = 1080},
			{time = 1000, x = 1920, y = 0, w = -387, h = 1080},
		}})
	end
	table.insert(t, {id = "bgaframe-bga", loop = 1000, op = {2161}, dst = { 
			{time = 0, x = 0 + 400, y = 0, w = 387, h = 1080, a = 0},
			{time = 500, x = 0 + 400, y = 0, w = 387, h = 1080, a = 0},
			{time = 500, x = 0 + 400, y = 0, w = 387, h = 1080, a = 255},
			{time = 750, x = 0 + 100, y = 0, w = 387, h = 1080},
			{time = 875, x = 0 + 25, y = 0, w = 387, h = 1080},
			{time = 1000, x = 0, y = 0, w = 387, h = 1080},
		}})
	table.insert(t, {id = "bgaframe-graph", loop = 1000, op = {2161}, dst = { 
			{time = 0, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 0},
			{time = 500, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 0},
			{time = 500, x = 1533 - 400, y = 0, w = 387, h = 1080, a = 255},
			{time = 750, x = 1533 - 100, y = 0, w = 387, h = 1080},
			{time = 875, x = 1533 - 25, y = 0, w = 387, h = 1080},
			{time = 1000, x = 1533, y = 0, w = 387, h = 1080},
		}})
	
	table.insert(t, {id = "laneframe-base", loop = 500, dst = { 
			{time = 0, x = 387, y = 500, w = 1146, h = 1080, a = 0},
			{time = 250, x = 387, y = 125, w = 1146, h = 1080, a = 128},
			{time = 375, x = 387, y = 31, w = 1146, h = 1080, a = 192},
			{time = 500, x = 387, y = 0, w = 1146, h = 1080, a = 255},
		}})
		
	if property.customFrame() then
		table.insert(t, {id = "overlay-base", loop = 500, blend = 4, dst = { 
			{time = 0, x = 387, y = 500, w = 1146, h = 1080, a = 255},
			{time = 250, x = 387, y = 125, w = 1146, h = 1080, a = 255},
			{time = 375, x = 387, y = 31, w = 1146, h = 1080, a = 255},
			{time = 500, x = 387, y = 0, w = 1146, h = 1080, a = 255},
		}})
	else
		table.insert(t, {id = "laneframe-mult", loop = 500, blend = 4, dst = { 
			{time = 0, x = 387, y = 500, w = 1146, h = 1080, a = 255, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
			{time = 250, x = 387, y = 125, w = 1146, h = 1080, a = 255},
			{time = 375, x = 387, y = 31, w = 1146, h = 1080, a = 255},
			{time = 500, x = 387, y = 0, w = 1146, h = 1080, a = 255},
		}})
	end
	
	table.insert(t, {id = "laneframe-stripes", loop = 500, op = {2001}, dst = { 
			{time = 0, x = 387, y = 500, w = 1146, h = 1080, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 250, x = 387, y = 125, w = 1146, h = 1080, a = 128},
			{time = 375, x = 387, y = 31, w = 1146, h = 1080, a = 192},
			{time = 500, x = 387, y = 0, w = 1146, h = 1080, a = 255},
		}})
		
	table.insert(t, {id = "laneframe", loop = 500, op = {2161}, dst = { 
			{time = 0, x = 387, y = 500, w = 1146, h = 1080, a = 0},
			{time = 250, x = 387, y = 125, w = 1146, h = 1080, a = 128},
			{time = 375, x = 387, y = 31, w = 1146, h = 1080, a = 192},
			{time = 500, x = 387, y = 0, w = 1146, h = 1080, a = 255},
		}})
	
	if not property.isGraphEnabled() or not property.graphLeftSide() then
		table.insert(t, {id = "bga-disp", loop = 1000, stretch = 3, dst = { 
			{time = 0, x = -1000, y = -1000, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 500, a = 0},
			{time = 500, x = property.constants.bga_x_1, y = property.constants.bga_y_1, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 1000, a = 255},
		}})
		table.insert(t, {id = "bga-disp", loop = 1000, stretch = 3, dst = { 
			{time = 0, x = -1000, y = -1000, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 500, a = 0},
			{time = 500, x = property.constants.bga_x_1, y = property.constants.bga_y_2, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 1000, a = 255},
		}})
	end
	if not property.isGraphEnabled() or property.graphLeftSide() then
		table.insert(t, {id = "bga-disp", loop = 1000, stretch = 3, dst = { 
			{time = 0, x = -1000, y = -1000, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 500, a = 0},
			{time = 500, x = property.constants.bga_x_2, y = property.constants.bga_y_1, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 1000, a = 255},
		}})
		table.insert(t, {id = "bga-disp", loop = 1000, stretch = 3, dst = { 
			{time = 0, x = -1000, y = -1000, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 500, a = 0},
			{time = 500, x = property.constants.bga_x_2, y = property.constants.bga_y_2, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 1000, a = 255},
		}})	
	end
	return t
end

local Frame = Objects.new({LaneFrame})

return Frame