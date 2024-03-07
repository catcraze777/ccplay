local consts = require "consts"
local property = require "lua/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local Difficulty = Object.new()
function Difficulty.image()
	t = {
		{id = "lv-label", src = "src-common", x = 85, y = 0, w = 54, h = 34}
	}
	for i = 0, 5 do
		table.insert(t, {id = "difficulty-"..i, src = "src-common", x = 516, y = i * 68, w = 508, h = 68})
	end
	return t
end
function Difficulty.value()
	t = {
		{id = "lv-int", src = "src-common", x = 155, y = 0, w = 240, h = 36, divx = 10, digit = 2, ref = 96}
	}
	return t
end
function Difficulty.destination()
	t = {}
	for i = 0, 5 do
		table.insert(t, {
			id = "difficulty-"..i, loop = 1000, op = {150 + i}, dst = {
				{time = 0, a = 0, x = property.constants.difficulty_x, y = property.constants.difficulty_y, w = 508, h = 68},
				{time = 500, a = 0},
				{time = 1000, a = 255}
			}
		})
	end
	table.insert(t, {
			id = "lv-label", loop = 1250, dst = {
				{time = 0, a = 0, x = property.constants.difficulty_x + property.constants.difficulty_lv_x, y = property.constants.difficulty_y + property.constants.difficulty_lv_y, w = 54, h = 34},
				{time = 750, a = 0},
				{time = 1250, a = 150}
			}
		})
	table.insert(t, {
			id = "lv-int", loop = 1500, dst = {
				{time = 0, a = 0, x = property.constants.difficulty_x + property.constants.difficulty_lv_x + 58, y = property.constants.difficulty_y + property.constants.difficulty_lv_y - 1, w = 24, h = 36},
				{time = 1000, a = 0},
				{time = 1500, a = 150}
			}
		})
	return t
end

local DifficultyLevel = Objects.new({Difficulty})

return DifficultyLevel