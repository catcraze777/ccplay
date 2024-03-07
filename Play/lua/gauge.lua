local consts = require "consts"
local property = require "lua/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"
local main_state = require("main_state")

local Gauge = Object.new()
function Gauge.image()
	local t
	if not property.grooveGaugeRainbow() then
		t = {
			{id = "gauge-r1", src = "src-common", x = 0, y = 0, w = 10, h = 30},
			{id = "gauge-r2", src = "src-common", x = 0, y = 30, w = 10, h = 30},
			{id = "gauge-b1", src = "src-common", x = 10, y = 0, w = 10, h = 30},
			{id = "gauge-b2", src = "src-common", x = 10, y = 30, w = 10, h = 30},
			{id = "gauge-y1", src = "src-common", x = 20, y = 0, w = 10, h = 30},
			{id = "gauge-y2", src = "src-common", x = 20, y = 30, w = 10, h = 30},
			{id = "gauge-p1", src = "src-common", x = 30, y = 0, w = 10, h = 30},
			{id = "gauge-p2", src = "src-common", x = 30, y = 30, w = 10, h = 30},
			{id = "gauge-g1", src = "src-common", x = 40, y = 0, w = 10, h = 30},
			{id = "gauge-g2", src = "src-common", x = 40, y = 30, w = 10, h = 30},
			{id = "gauge-w1", src = "src-common", x = 50, y = 0, w = 10, h = 30},
			{id = "gauge-w2", src = "src-common", x = 50, y = 30, w = 10, h = 30}
		}
	else
		t = {
			{id = "gauge-r1", src = "src-common", x = 60, y = 0, w = 10, h = 30},
			{id = "gauge-r2", src = "src-common", x = 60, y = 30, w = 10, h = 30},
			{id = "gauge-b1", src = "src-common", x = 60, y = 0, w = 10, h = 30},
			{id = "gauge-b2", src = "src-common", x = 60, y = 30, w = 10, h = 30},
			{id = "gauge-y1", src = "src-common", x = 60, y = 0, w = 10, h = 30},
			{id = "gauge-y2", src = "src-common", x = 60, y = 30, w = 10, h = 30},
			{id = "gauge-p1", src = "src-common", x = 60, y = 0, w = 10, h = 30},
			{id = "gauge-p2", src = "src-common", x = 60, y = 30, w = 10, h = 30},
			{id = "gauge-g1", src = "src-common", x = 60, y = 0, w = 10, h = 30},
			{id = "gauge-g2", src = "src-common", x = 60, y = 30, w = 10, h = 30},
			{id = "gauge-w1", src = "src-common", x = 60, y = 0, w = 10, h = 30},
			{id = "gauge-w2", src = "src-common", x = 60, y = 30, w = 10, h = 30}
		}

	end
	for i = 1, 5 do
		table.insert(t, {id = "groove_rainbow_"..i, src = "src-common", x = 0, y = 334 + 30 * i, w = 500, h = 30} )
	end
	table.insert(t, {id = "groove-int-gone", src = "src-common", x = 240, y = 60, w = 72, h = 36} )
	table.insert(t, {id = "groove-dec-gone", src = "src-common", x = 120, y = 132, w = 12, h = 18} )
	return t
end
function Gauge.value()
	t = {
		{id = "groove-int", src = "src-common", x = 0, y = 96, w = 240, h = 36, divx = 10, digit = 3, ref = 107},
		{id = "groove-100", src = "src-common", x = 0, y = 60, w = 240, h = 36, divx = 10, digit = 3, ref = 107},
		{id = "groove-dec", src = "src-common", x = 0, y = 132, w = 120, h = 18, divx = 10, digit = 1, ref = 407}
	}
	return t
end
function Gauge.destination()
	local gauge_width = 500;
	if property.is2pLane() then
		gauge_width = -500
	end
	t = {
		{
			id = "groove-int", op = {-240, 2051}, loop = 1000, dst = {
				{time = 0, a = 0, x = property.constants.groove_num_x, y = property.constants.groove_num_y, w = 24, h = 36},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		},
		{
			id = "groove-100", op = {240, 2051}, loop = 1000, dst = {
				{time = 0, a = 0, x = property.constants.groove_num_x, y = property.constants.groove_num_y, w = 24, h = 36},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		},
		{
			id = "groove-dec", loop = 1000, op = {2051}, dst = {
				{time = 0, a = 0, x = property.constants.groove_num_x + 77, y = property.constants.groove_num_y, w = 12, h = 18},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		},
		{
			id = "groove-int-gone", op = {2052}, loop = 1000, dst = {
				{time = 0, a = 0, x = property.constants.groove_num_x, y = property.constants.groove_num_y, w = 72, h = 36},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		},
		{
			id = "groove-dec-gone", loop = 1000, op = {2052}, dst = {
				{time = 0, a = 0, x = property.constants.groove_num_x + 77, y = property.constants.groove_num_y, w = 12, h = 18},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		}
	}
	if property.grooveGaugeRainbow() then
		--table.insert(t, {id = "groove_rainbow_1", loop = 1000, draw = function() return (main_state.gauge_type() == 0) end, dst = { {time = 0, x = property.constants.groove_gauge_x, y = property.constants.groove_gauge_y, w = gauge_width, h = 30, a = 0}, {time = 500, a = 0}, {time = 1000, a = 255} }})
		table.insert(t, {id = "groove_rainbow_2", loop = 1000, draw = function() return (main_state.gauge_type() == 2) end, dst = { {time = 0, x = property.constants.groove_gauge_x, y = property.constants.groove_gauge_y, w = gauge_width, h = 30, a = 0}, {time = 500, a = 0}, {time = 1000, a = 255} }})
		table.insert(t, {id = "groove_rainbow_3", loop = 1000, draw = function() return (main_state.gauge_type() >= 3) end, dst = { {time = 0, x = property.constants.groove_gauge_x, y = property.constants.groove_gauge_y, w = gauge_width, h = 30, a = 0}, {time = 500, a = 0}, {time = 1000, a = 255} }})
		table.insert(t, {id = "groove_rainbow_4", loop = 1000, draw = function() return (main_state.gauge_type() == 0) end, dst = { {time = 0, x = property.constants.groove_gauge_x, y = property.constants.groove_gauge_y, w = gauge_width, h = 30, a = 0}, {time = 500, a = 0}, {time = 1000, a = 255} }})
		table.insert(t, {id = "groove_rainbow_5", loop = 1000, draw = function() return (main_state.gauge_type() == 1) end, dst = { {time = 0, x = property.constants.groove_gauge_x, y = property.constants.groove_gauge_y, w = gauge_width, h = 30, a = 0}, {time = 500, a = 0}, {time = 1000, a = 255} }})
	end
	table.insert(t, {
			id = "groove-gauge", loop = 1000, dst = {
				{time = 0, a = 0, x = property.constants.groove_gauge_x, y = property.constants.groove_gauge_y, w = gauge_width, h = 30},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		} )
	return t
end

local GrooveGauge = Objects.new({Gauge})

return GrooveGauge