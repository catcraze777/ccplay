local consts = require "consts"
local property = require "lua_dp/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local Failed = Object.new()
function Failed.image()
	t = {}
	table.insert(t, {id = "shutter-top", src = "src-failed", x = 0, y = 0, w = 1920, h = 540} )
	table.insert(t, {id = "shutter-bottom", src = "src-failed", x = 0, y = 540, w = 1920, h = 540} )
	table.insert(t, {id = "failed-img", src = "src-failed", x = 0, y = 1080, w = 1920, h = 1080} )
	return t
end
function Failed.destination()
	t = {}
	table.insert(t, {id = "shutter-top", loop = 500, timer = 3, dst = { 
			{time = 0, x = 0, y = 1080, w = 1920, h = 540, a = 0},
			{time = 500, y = 1080/2, a = 255},
		}})
	table.insert(t, {id = "shutter-bottom", loop = 500, timer = 3, dst = { 
			{time = 0, x = 0, y = -540, w = 1920, h = 540, a = 0},
			{time = 500, y = -540 + 540, a = 255},
		}})
	table.insert(t, {id = "failed-img", loop = 1000, blend = 0, timer = 3, dst = { 
			{time = 0, x = 0, y = 0, w = 1920, h = 1080, g = 255, b = 255, a = 0},
			{time = 500, g = 255, b = 255, a = 0, x = 250, y = 140, w = 1420, h = 800},
			{time = 650, g = 220, b = 220, a = 100, x = 200, y = 120, w = 1520, h = 840},
			{time = 850, g = 180, b = 180, a = 200, x = 50, y = 20, w = 1820, h = 1040},
			{time = 1000, g = 150, b = 150, a = 255, x = 0, y = 0, w = 1920, h = 1080},
			{time = 1150, g = 180, b = 180, x = 25, y = 14, w = 1870, h = 1052},
			{time = 1350, g = 220, b = 220, x = 75, y = 42, w = 1770, h = 996},
			{time = 1500, g = 255, b = 255, x = 100, y = 56, w = 1720, h = 968},
			{time = 1650, g = 220, b = 220, x = 75, y = 42, w = 1770, h = 996},
			{time = 1850, g = 180, b = 180, x = 25, y = 14, w = 1870, h = 1052},
			{time = 2000, g = 150, b = 150, x = 0, y = 0, w = 1920, h = 1080},
		}})
	--[[table.insert(t, {id = -111, loop = 500, blend = 4, timer = 3, dst = { 
			{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 0, g = 100, b = 100},
			{time = 500, a = 255},
			{time = 1000, a = 150},
			{time = 1500, a = 255},
		}})]]--
	table.insert(t, {id = -110, loop = 3000, timer = 3, dst = { 
			{time = 2500, x = 0, y = 0, w = 1920, h = 1080, a = 0},
			{time = 3000, a = 255},
		}})
	table.insert(t, {id = -110, loop = 500, timer = 2, dst = { 
			{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 0},
			{time = 500, a = 255},
		}})
	return t
end

local failedFrame = Objects.new({Failed})

return failedFrame