local consts = require "consts"
local property = require "lua_dp/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local LaneType = Object.new()
LaneType.w = property.constants.lane_width_ac
LaneType.h = property.constants.lane_height_ac
function LaneType.liftCover()
	return {
		{id = "lift", src = "src-lift", x = 0, y = 0, w = property.constants.lane_width_ac, h = property.constants.lane_height_ac, disapearLine = property.constants.lane_y_location + property.constants.lane_outline_width}
	}
end
function LaneType.hiddenCover()
	return {
		{id = "hidden", src = "src-hidden", x = 0, y = 0, w = property.constants.lane_width_ac, h = property.constants.lane_height_ac, disapearLine = property.constants.lane_y_location + property.constants.lane_outline_width}
	}
end
function LaneType.slider()
	return {
		{id = "sudden", src = "src-sudden", x = 0, y = 0, w = property.constants.lane_width_ac, h = property.constants.lane_height_ac, angle = 2, range = 1080 - property.constants.lane_outline_width - property.constants.lane_y_location, type = 4}
	}
end
function LaneType.value()
	t = {
		{id = "white-sudden-int", src = "src-common", x = 0, y = 132, w = 120, h = 18, divx = 10, align = 2, digit = 4, ref = 14},
		{id = "white-lift-int", src = "src-common", x = 0, y = 132, w = 120, h = 18, divx = 10, align = 2, digit = 4, ref = 314},
		{id = "white-hidden-int", src = "src-common", x = 0, y = 132, w = 120, h = 18, divx = 10, align = 2, digit = 4, ref = 315},
		{id = "green-num-min-int", src = "src-common", x = 0, y = 132, w = 120, h = 18, divx = 10, align = 2, digit = 4, ref = 1321},
		{id = "green-num-int", src = "src-common", x = 0, y = 132, w = 120, h = 18, divx = 10, align = 2, digit = 4, ref = 313},
		{id = "green-num-max-int", src = "src-common", x = 0, y = 132, w = 120, h = 18, divx = 10, align = 2, digit = 4, ref = 1325},
	}
	return t
end
function LaneType.destination()
	local x = 0 local y = 0 local w = LaneType.w local h = LaneType.h
	local sudden_r = skin_config.offset["Stipes RGB (0-255)"].x local sudden_g = skin_config.offset["Stipes RGB (0-255)"].y local sudden_b = skin_config.offset["Stipes RGB (0-255)"].w
	local lift_r = skin_config.offset["Stipes RGB (0-255)"].x local lift_g = skin_config.offset["Stipes RGB (0-255)"].y local lift_b = skin_config.offset["Stipes RGB (0-255)"].w
	if property.customSudden() then
		sudden_r = 255
		sudden_g = 255
		sudden_b = 255
	end
	if property.customLift() then
		lift_r = 255
		lift_g = 255
		lift_b = 255
	end
  return {
		{id = "lift", loop = 1000, dst = { 
			{time = 500, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = property.constants.lane_y_location - 100 + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac, r = lift_r, g = lift_g, b = lift_b},
			{time = 750, a = 128, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = property.constants.lane_y_location - 25 + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac},
			{time = 1000, a = 255, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac} 	
		}},
		{id = "hidden", loop = 1000, dst = { 
			{time = 500, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = property.constants.lane_y_location - 100 + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac, r = lift_r, g = lift_g, b = lift_b},
			{time = 750, a = 128, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = property.constants.lane_y_location - 25 + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac},
			{time = 1000, a = 255, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac} 
		}},
		{id = "sudden", loop = 1000, dst = { 
			{time = 500, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = 1080 + 100, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac, r = sudden_r, g = sudden_g, b = sudden_b},
			{time = 750, a = 128, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = 1080 + 25, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac},
			{time = 1000, a = 255, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = 1080, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac}
		}},
		{id = "green-num-min-int", loop = 1000, op = {270, -271, -273, 177}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 193 - 4, y = 1080 - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-max-int", loop = 1000, op = {270, -271, -273, 177}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 193 + 24 + 4, y = 1080 - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-int", loop = 1000, op = {270, -271, -273}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 193, y = 1080 - 7 - 18, w = 12, h = 18, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-min-int", loop = 1000, op = {270, 271, 177}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 225 - 4, y = 1080 + 7 + 20, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-max-int", loop = 1000, op = {270, 271, 177}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 225 + 24 + 4, y = 1080 + 7 + 20, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-int", loop = 1000, op = {270, 271}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 225, y = 1080 + 7, w = 12, h = 18, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "white-sudden-int", loop = 1000, op = {270, 271}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 162, y = 1080 + 7, w = 12, h = 18},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "white-hidden-int", loop = 1000, op = {270, 273}, offset = 5, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 162, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18, w = 12, h = 18},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-min-int", loop = 1000, op = {270, 273, 177}, offset = 5, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 225 - 4, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-max-int", loop = 1000, op = {270, 273, 177}, offset = 5, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 225 + 24 + 4, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-int", loop = 1000, op = {270, 273}, offset = 5, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 225, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18, w = 12, h = 18, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-int", loop = 1000, op = {270, 272, -273}, offset = 3, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 225, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18, w = 12, h = 18, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-min-int", loop = 1000, op = {270, 272, -273, 177}, offset = 3, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 225 - 4, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-max-int", loop = 1000, op = {270, 272, -273, 177}, offset = 3, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 225 + 24 + 4, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "white-lift-int", loop = 1000, op = {270, 272}, offset = 3, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width + 162, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18, w = 12, h = 18},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		
		
		
		{id = "lift", loop = 1000, dst = { 
			{time = 500, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = property.constants.lane_y_location - 100 + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac, r = lift_r, g = lift_g, b = lift_b},
			{time = 750, a = 128, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = property.constants.lane_y_location - 25 + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac},
			{time = 1000, a = 255, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac} 	
		}},
		{id = "hidden", loop = 1000, dst = { 
			{time = 500, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = property.constants.lane_y_location - 100 + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac, r = lift_r, g = lift_g, b = lift_b},
			{time = 750, a = 128, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = property.constants.lane_y_location - 25 + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac},
			{time = 1000, a = 255, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width - property.constants.lane_height_ac, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac} 
		}},
		{id = "sudden", loop = 1000, dst = { 
			{time = 500, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = 1080 + 100, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac, r = sudden_r, g = sudden_g, b = sudden_b},
			{time = 750, a = 128, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = 1080 + 25, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac},
			{time = 1000, a = 255, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = 1080, w = property.constants.lane_width_ac - 2 * property.constants.lane_outline_width, h = property.constants.lane_height_ac}
		}},
		{id = "green-num-min-int", loop = 1000, op = {270, -271, -273, 177}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 193 - 4, y = 1080 - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-max-int", loop = 1000, op = {270, -271, -273, 177}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 193 + 24 + 4, y = 1080 - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-int", loop = 1000, op = {270, -271, -273}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 193, y = 1080 - 7 - 18, w = 12, h = 18, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-min-int", loop = 1000, op = {270, 271, 177}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 225 - 4, y = 1080 + 7 + 20, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-max-int", loop = 1000, op = {270, 271, 177}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 225 + 24 + 4, y = 1080 + 7 + 20, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-int", loop = 1000, op = {270, 271}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 225, y = 1080 + 7, w = 12, h = 18, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "white-sudden-int", loop = 1000, op = {270, 271}, offset = 4, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 162, y = 1080 + 7, w = 12, h = 18},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "white-hidden-int", loop = 1000, op = {270, 273}, offset = 5, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 162, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18, w = 12, h = 18},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-min-int", loop = 1000, op = {270, 273, 177}, offset = 5, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 225 - 4, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-max-int", loop = 1000, op = {270, 273, 177}, offset = 5, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 225 + 24 + 4, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-int", loop = 1000, op = {270, 273}, offset = 5, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 225, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18, w = 12, h = 18, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-int", loop = 1000, op = {270, 272, -273}, offset = 3, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 225, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18, w = 12, h = 18, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-min-int", loop = 1000, op = {270, 272, -273, 177}, offset = 3, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 225 - 4, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "green-num-max-int", loop = 1000, op = {270, 272, -273, 177}, offset = 3, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 225 + 24 + 4, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18 - 20 + 9, w = 6, h = 9, r = 0, b = 0},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}},
		{id = "white-lift-int", loop = 1000, op = {270, 272}, offset = 3, dst = {
			{time = 0, a = 0, x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width + 162, y = property.constants.lane_y_location + property.constants.lane_outline_width - 7 - 18, w = 12, h = 18},
			{time = 1000, a = 0},
			{time = 1000, a = 255}
		}}
	}
end

local Covers = Objects.new({LaneType})

return Covers