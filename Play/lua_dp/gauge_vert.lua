local consts = require "consts"
local property = require "lua_dp/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"
local main_state = require("main_state")

local WebcamParts = Object.new()
function WebcamParts.image()
	local t = {}
	local offset = -30
	if not property.grooveGaugeOn() then
		offset = 0
	end
	if not property.grooveGaugeRainbow() then
		t = {
			{id = "gauge-r1-vert", src = "src-common", x = 1194 + offset, y = 1014, w = 30, h = 10},
			{id = "gauge-r2-vert", src = "src-common", x = 1194, y = 1014, w = 30, h = 10},
			{id = "gauge-b1-vert", src = "src-common", x = 1194 + offset, y = 1004, w = 30, h = 10},
			{id = "gauge-b2-vert", src = "src-common", x = 1194, y = 1004, w = 30, h = 10},
			{id = "gauge-y1-vert", src = "src-common", x = 1194 + offset, y = 994, w = 30, h = 10},
			{id = "gauge-y2-vert", src = "src-common", x = 1194, y = 994, w = 30, h = 10},
			{id = "gauge-p1-vert", src = "src-common", x = 1194 + offset, y = 984, w = 30, h = 10},
			{id = "gauge-p2-vert", src = "src-common", x = 1194, y = 984, w = 30, h = 10},
			{id = "gauge-g1-vert", src = "src-common", x = 1194 + offset, y = 974, w = 30, h = 10},
			{id = "gauge-g2-vert", src = "src-common", x = 1194, y = 974, w = 30, h = 10},
			{id = "gauge-w1-vert", src = "src-common", x = 1194 + offset, y = 964, w = 30, h = 10},
			{id = "gauge-w2-vert", src = "src-common", x = 1194, y = 964, w = 30, h = 10}
		}
	else
		t = {
			{id = "gauge-r1-vert", src = "src-common", x = 1164, y = 954, w = 30, h = 10},
			{id = "gauge-r2-vert", src = "src-common", x = 1194, y = 954, w = 30, h = 10},
			{id = "gauge-b1-vert", src = "src-common", x = 1164, y = 954, w = 30, h = 10},
			{id = "gauge-b2-vert", src = "src-common", x = 1194, y = 954, w = 30, h = 10},
			{id = "gauge-y1-vert", src = "src-common", x = 1164, y = 954, w = 30, h = 10},
			{id = "gauge-y2-vert", src = "src-common", x = 1194, y = 954, w = 30, h = 10},
			{id = "gauge-p1-vert", src = "src-common", x = 1164, y = 954, w = 30, h = 10},
			{id = "gauge-p2-vert", src = "src-common", x = 1194, y = 954, w = 30, h = 10},
			{id = "gauge-g1-vert", src = "src-common", x = 1164, y = 954, w = 30, h = 10},
			{id = "gauge-g2-vert", src = "src-common", x = 1194, y = 954, w = 30, h = 10},
			{id = "gauge-w1-vert", src = "src-common", x = 1164, y = 954, w = 30, h = 10},
			{id = "gauge-w2-vert", src = "src-common", x = 1194, y = 954, w = 30, h = 10}
		}
	end
	table.insert(t, {id = "vertical_groove_gauge_frame", src = "src-common", x = 960, y = 501, w = 51, h = 510})
	return t
end

rng_seed = 0.0

function WebcamParts.destination()
	local gauge_width = 500;
	t = { }
	if property.verticalGrooveGauge() then
		local groove_angle = 90
		local webcam_groove_x = 939
		local webcam_groove_y = 420
		table.insert(t, {id = "vertical_groove_gauge_frame", loop = 1000, dst = { 
			{time = 0, x = webcam_groove_x - 5, y = webcam_groove_y - 5, w = 51, h = 510, a = 0}, 
			{time = 500, a = 0}, 
			{time = 1000, a = 255} 
		}})
		webcam_groove_x = 939 - 250 + 20
		webcam_groove_y = 420 + 250 - 20
		if property.grooveGaugeRainbow() then
			--table.insert(t, {id = "groove_rainbow_1", loop = 1000, draw = function() return (main_state.gauge_type() == 0) end, dst = { {time = 0, x = property.constants.groove_gauge_x, y = property.constants.groove_gauge_y, w = gauge_width, h = 40, a = 0}, {time = 500, a = 0}, {time = 1000, a = 255} }})
			table.insert(t, {id = "groove_rainbow_2", loop = 1000, draw = function() return (main_state.gauge_type() == 2) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y, w = gauge_width, h = 40, a = 0, angle = groove_angle}, {time = 500, a = 0}, {time = 1000, a = 255} }})
			table.insert(t, {id = "groove_rainbow_3", loop = 1000, draw = function() return (main_state.gauge_type() >= 3) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y, w = gauge_width, h = 40, a = 0, angle = groove_angle}, {time = 500, a = 0}, {time = 1000, a = 255} }})
			table.insert(t, {id = "groove_rainbow_4", loop = 1000, draw = function() return (main_state.gauge_type() == 0) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y, w = gauge_width, h = 40, a = 0, angle = groove_angle}, {time = 500, a = 0}, {time = 1000, a = 255} }})
			table.insert(t, {id = "groove_rainbow_5", loop = 1000, draw = function() return (main_state.gauge_type() == 1) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y, w = gauge_width, h = 40, a = 0, angle = groove_angle}, {time = 500, a = 0}, {time = 1000, a = 255} }})
		end
		webcam_groove_x = 939
		webcam_groove_y = 420
		for i = 1, 50 do
			i_2 = i - 1
			local condition = function() 
				rng_seed = rng_seed + 0.4
				math.randomseed( math.floor(rng_seed) )
				gauge_i = math.floor(main_state.gauge() / 2)
				within_three = gauge_i - 3 <= i and i <= gauge_i - 1
				rng = math.random(0, 3) < (i - gauge_i + 4)
				return main_state.gauge() >= i * 2 and not (within_three and rng)
			end
			-- Assist gauge.
			if i < 30 then
				table.insert(t, {id = "gauge-p2-vert", loop = 1000, draw = function() return not condition() and (main_state.gauge_type() == 0) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
				}})
				table.insert(t, {id = "gauge-p1-vert", loop = 1000, draw = function() return condition() and (main_state.gauge_type() == 0) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
				}})
			else
				table.insert(t, {id = "gauge-r2-vert", loop = 1000, draw = function() return not condition() and (main_state.gauge_type() == 0) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
				}})
				table.insert(t, {id = "gauge-r1-vert", loop = 1000, draw = function() return condition() and qmain_state.gauge_type() == 0 end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
				}})
			end
			-- Easy and normal gauge.
			if i < 40 then
				table.insert(t, {id = "gauge-b2-vert", loop = 1000, draw = function() return not condition() and (main_state.gauge_type() == 2) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
				}})
				table.insert(t, {id = "gauge-g2-vert", loop = 1000, draw = function() return not condition() and (main_state.gauge_type() == 1) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
				}})
				table.insert(t, {id = "gauge-b1-vert", loop = 1000, draw = function() return condition() and (main_state.gauge_type() == 2) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
				}})
				table.insert(t, {id = "gauge-g1-vert", loop = 1000, draw = function() return condition() and (main_state.gauge_type() == 1) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
				}})
			else
				table.insert(t, {id = "gauge-r2-vert", loop = 1000, draw = function() return not condition() and ((main_state.gauge_type() == 1) or (main_state.gauge_type() == 2)) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
				}})
				table.insert(t, {id = "gauge-r1-vert", loop = 1000, draw = function() return condition() and ((main_state.gauge_type() == 1) or (main_state.gauge_type() == 2)) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
				}})
			end
			-- Hard gauges.
			table.insert(t, {id = "gauge-r2-vert", loop = 1000, draw = function() return not condition() and ((main_state.gauge_type() == 3) or (main_state.gauge_type() == 6)) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
			}})
			table.insert(t, {id = "gauge-r1-vert", loop = 1000, draw = function() return condition() and ((main_state.gauge_type() == 3) or (main_state.gauge_type() == 6)) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
				{time = 500, a = 0}, 
				{time = 1000, a = 255} 
			}})
			table.insert(t, {id = "gauge-y2-vert", loop = 1000, draw = function() return not condition() and ((main_state.gauge_type() == 4) or (main_state.gauge_type() == 7)) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
			}})
			table.insert(t, {id = "gauge-y1-vert", loop = 1000, draw = function() return condition() and ((main_state.gauge_type() == 4) or (main_state.gauge_type() == 7)) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
				{time = 500, a = 0}, 
				{time = 1000, a = 255} 
			}})
			table.insert(t, {id = "gauge-w2-vert", loop = 1000, draw = function() return not condition() and ((main_state.gauge_type() == 5) or (main_state.gauge_type() == 8)) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
					{time = 500, a = 0}, 
					{time = 1000, a = 255} 
			}})
			table.insert(t, {id = "gauge-w1-vert", loop = 1000, draw = function() return condition() and ((main_state.gauge_type() == 5) or (main_state.gauge_type() == 8)) end, dst = { {time = 0, x = webcam_groove_x, y = webcam_groove_y + i_2 * (gauge_width / 50), w = 40, h = gauge_width / 50, a = 0}, 
				{time = 500, a = 0}, 
				{time = 1000, a = 255} 
			}})
		end
		--[[table.insert(t, {
				id = "groove-gauge", loop = 1000, dst = {
					{time = 0, a = 0, x = webcam_groove_x, y = webcam_groove_y, w = gauge_width, h = 40, angle = groove_angle},
					{time = 500, a = 0},
					{time = 1000, a = 255}
				}
			} )]]--
	end
	return t
end

local Webcam = Objects.new({WebcamParts})

return Webcam