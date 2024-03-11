local consts = require "consts"
local property = require "lua/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local LaneFrame = Object.new()
function LaneFrame.image()
	t = {}
	if property.is1pLane() then
		table.insert(t, {id = "laneframe-base", src = "src-laneframe-base", x = 0, y = 0, w = 542, h = 1080})
		table.insert(t, {id = "bgaframe-base-bottom", src = "src-laneframe-base", x = 542, y = 0 + 923, w = 1378, h = 157})
		table.insert(t, {id = "bgaframe-base-top", src = "src-laneframe-base", x = 542, y = 0, w = 1378, h = 113})
		table.insert(t, {id = "bgaframe-base-side", src = "src-laneframe-base", x = 542, y = 0 + 113, w = 149, h = 810})
		table.insert(t, {id = "bgaframe-base-video", src = "src-laneframe-base", x = 542 + 149, y = 0 + 113, w = 1080, h = 810})
		table.insert(t, {id = "bgaframe-base-webcam", src = "src-laneframe-base", x = 0, y = 1080, w = 1080, h = 810})
		if property.rainbowFrame() then
			table.insert(t, {id = "laneframe-mult", src = "src-common", x = 0, y = 364, w = 500, h = 30, divx = 500, cycle = 60000})
		else
			table.insert(t, {id = "laneframe-mult", src = "src-common", x = 18, y = 71, w = 1, h = 1})
		end
		
		table.insert(t, {id = "laneframe-stripes", src = "src-laneframe-stripes", x = 0, y = 0, w = 542, h = 1080})
		table.insert(t, {id = "bgaframe-bottom-stripes", src = "src-laneframe-stripes", x = 542, y = 0 + 923, w = 1378, h = 157})
		table.insert(t, {id = "bgaframe-top-stripes", src = "src-laneframe-stripes", x = 542, y = 0 , w = 1378, h = 113})
		table.insert(t, {id = "bgaframe-side-stripes", src = "src-laneframe-stripes", x = 542, y = 0 + 113, w = 149, h = 810})
		table.insert(t, {id = "bgaframe-video-stripes", src = "src-laneframe-stripes", x = 542 + 149, y = 0 + 113, w = 1080, h = 810})
		table.insert(t, {id = "bgaframe-webcam-stripes", src = "src-laneframe-stripes", x = 0, y = 1080, w = 1080, h = 810})
		
		table.insert(t, {id = "laneframe", src = "src-laneframe", x = 0, y = 0, w = 542, h = 1080})
		table.insert(t, {id = "bgaframe-bottom", src = "src-laneframe", x = 542, y = 0 + 923, w = 1378, h = 157})
		table.insert(t, {id = "bgaframe-top", src = "src-laneframe", x = 542, y = 0 , w = 1378, h = 113})
		table.insert(t, {id = "bgaframe-side", src = "src-laneframe", x = 542, y = 0 + 113, w = 149, h = 810})
		table.insert(t, {id = "bgaframe-video", src = "src-laneframe", x = 542 + 149, y = 0 + 113, w = 1080, h = 810})
	else
		table.insert(t, {id = "laneframe-base", src = "src-laneframe-base", x = 1378, y = 0, w = 542, h = 1080})
		table.insert(t, {id = "bgaframe-base-bottom", src = "src-laneframe-base", x = 0, y = 0 + 923, w = 1378, h = 157})
		table.insert(t, {id = "bgaframe-base-top", src = "src-laneframe-base", x = 0, y = 0, w = 1378, h = 113})
		table.insert(t, {id = "bgaframe-base-side", src = "src-laneframe-base", x = 0, y = 0 + 113, w = 149, h = 810})
		table.insert(t, {id = "bgaframe-base-video", src = "src-laneframe-base", x = 0 + 149, y = 0 + 113, w = 1080, h = 810})
		table.insert(t, {id = "bgaframe-base-webcam", src = "src-laneframe-base", x = 0, y = 1080, w = 1080, h = 810})
		
		if property.rainbowFrame() then
			table.insert(t, {id = "laneframe-mult", src = "src-common", x = 0, y = 364, w = 500, h = 30, divx = 500, cycle = 60000})
		else
			table.insert(t, {id = "laneframe-mult", src = "src-common", x = 18, y = 71, w = 1, h = 1})
		end
		table.insert(t, {id = "laneframe-stripes", src = "src-laneframe-stripes", x = 1378, y = 0, w = 542, h = 1080})
		table.insert(t, {id = "bgaframe-bottom-stripes", src = "src-laneframe-stripes", x = 0, y = 0 + 923, w = 1378, h = 157})
		table.insert(t, {id = "bgaframe-top-stripes", src = "src-laneframe-stripes", x = 0, y = 0, w = 1378, h = 113})
		table.insert(t, {id = "bgaframe-side-stripes", src = "src-laneframe-stripes", x = 0, y = 0 + 113, w = 149, h = 810})
		table.insert(t, {id = "bgaframe-video-stripes", src = "src-laneframe-stripes", x = 0 + 149, y = 0 + 113, w = 1080, h = 810})
		table.insert(t, {id = "bgaframe-webcam-stripes", src = "src-laneframe-stripes", x = 0, y = 1080, w = 1080, h = 810})
		
		table.insert(t, {id = "laneframe", src = "src-laneframe", x = 1378, y = 0, w = 542, h = 1080})
		table.insert(t, {id = "bgaframe-bottom", src = "src-laneframe", x = 0, y = 0 + 923, w = 1378, h = 157})
		table.insert(t, {id = "bgaframe-top", src = "src-laneframe", x = 0, y = 0, w = 1378, h = 113})
		table.insert(t, {id = "bgaframe-side", src = "src-laneframe", x = 0, y = 0 + 113, w = 149, h = 810})
		table.insert(t, {id = "bgaframe-video", src = "src-laneframe", x = 0 + 149, y = 0 + 113, w = 1080, h = 810})
	end
	table.insert(t, {id = "overlay-base", src = "src-laneframe-overlay", x = 0, y = 0, w = 542, h = 1080})
	table.insert(t, {id = "overlay-bottom", src = "src-laneframe-overlay", x = 542, y = 0 + 923, w = 1378, h = 157})
	table.insert(t, {id = "overlay-top", src = "src-laneframe-overlay", x = 542, y = 0, w = 1378, h = 113})
	table.insert(t, {id = "overlay-side", src = "src-laneframe-overlay", x = 542, y = 0 + 113, w = 149, h = 810})
	table.insert(t, {id = "overlay-side-2", src = "src-laneframe-overlay", x = 542 + 149 + 1080, y = 0 + 113, w = 149, h = 810})
	table.insert(t, {id = "overlay-video", src = "src-laneframe-overlay", x = 542 + 149, y = 0 + 113, w = 1080, h = 810})
	table.insert(t, {id = "overlay-webcam", src = "src-laneframe-overlay", x = 0, y = 1080, w = 1080, h = 810})
	return t
end
function LaneFrame.destination()
	t = {}
	local lane_offset = 0
	local bga_offset = 542
	local direction_mult = 1
	local video_x = 149
	if property.is2pLane() then
		lane_offset = 1378
		bga_offset = 0
		direction_mult = -1
	end
	if property.isGraphEnabled() and property.graphLeftSide() then
		video_x = 298
	elseif property.isGraphEnabled() then
		video_x = 0
	end
	if property.rainbowFrame() then
		skin_config.offset["Frame RGB (0-255)"].x = 255
		skin_config.offset["Frame RGB (0-255)"].y = 255
		skin_config.offset["Frame RGB (0-255)"].w = 255
	end
	table.insert(t, {id = "laneframe-base", loop = 500, dst = { 
			{time = 0, x = lane_offset, y = 500, w = 542, h = 1080, a = 0},
			{time = 250, x = lane_offset, y = 125, w = 542, h = 1080, a = 128},
			{time = 375, x = lane_offset, y = 31, w = 542, h = 1080, a = 192},
			{time = 500, x = lane_offset, y = 0, w = 542, h = 1080, a = 255},
		}})
	table.insert(t, {id = "bgaframe-base-bottom", loop = 500, dst = { 
			{time = 0, x = bga_offset, y = 0 - 500, w = 1378, h = 157, a = 0},
			{time = 250, x = bga_offset, y = 0 - 125, w = 1378, h = 157, a = 128},
			{time = 375, x = bga_offset, y = 0 - 31, w = 1378, h = 157, a = 192},
			{time = 500, x = bga_offset, y = 0, w = 1378, h = 157, a = 255},
		}})
	table.insert(t, {id = "bgaframe-base-top", loop = 500, dst = { 
			{time = 0, x = bga_offset, y = 967 + 500, w = 1378, h = 113, a = 0},
			{time = 250, x = bga_offset, y = 967 + 125, w = 1378, h = 113, a = 128},
			{time = 375, x = bga_offset, y = 967 + 31, w = 1378, h = 113, a = 192},
			{time = 500, x = bga_offset, y = 967, w = 1378, h = 113, a = 255},
		}})
	if not property.isGraphEnabled() then
		table.insert(t, {id = "bgaframe-base-side", loop = 1000, dst = { 
			{time = 0 + 500, x = bga_offset + 250, y = 157, w = 149, h = 810, a = 0},
			{time = 0 + 500, x = bga_offset + 250, y = 157, w = 149, h = 810, a = 255},
			{time = 250 + 500, x = bga_offset + 62, y = 157, w = 149, h = 810, a = 255},
			{time = 375 + 500, x = bga_offset + 16, y = 157, w = 149, h = 810, a = 255},
			{time = 500 + 500, x = bga_offset, y = 157, w = 149, h = 810, a = 255},
		}})
		table.insert(t, {id = "bgaframe-base-side", loop = 1000, dst = { 
			{time = 0 + 500, x = bga_offset - 250 + 1378, y = 157, w = -149, h = 810, a = 0},
			{time = 0 + 500, x = bga_offset - 250 + 1378, y = 157, w = -149, h = 810, a = 255},
			{time = 250 + 500, x = bga_offset - 62 + 1378, y = 157, w = -149, h = 810, a = 255},
			{time = 375 + 500, x = bga_offset - 16 + 1378, y = 157, w = -149, h = 810, a = 255},
			{time = 500 + 500, x = bga_offset + 1378, y = 157, w = -149, h = 810, a = 255},
		}})
	end
	if not property.isGraphEnabled() and not property.customFrame() then
		table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
			{time = 0, x = bga_offset, y = 157, w = 149, h = 810, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
		}})
		table.insert(t, {id = "laneframe-mult", loop = 1000, blend = 4, dst = { 
			{time = 0, x = bga_offset + 1378 - 149, y = 157, w = 149, h = 810, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
		}})
	end
	if not property.isGraphEnabled() and property.customFrame()  then
			table.insert(t, {id = "overlay-side", loop = 1000, blend = 4, dst = { 
				{time = 0 + 500, x = bga_offset + 250, y = 157, w = 149, h = 810, a = 0},
				{time = 0 + 500, x = bga_offset + 250, y = 157, w = 149, h = 810, a = 255},
				{time = 250 + 500, x = bga_offset + 62, y = 157, w = 149, h = 810, a = 255},
				{time = 375 + 500, x = bga_offset + 16, y = 157, w = 149, h = 810, a = 255},
				{time = 500 + 500, x = bga_offset, y = 157, w = 149, h = 810, a = 255},
			}})
			table.insert(t, {id = "overlay-side-2", loop = 1000, blend = 4, dst = { 
				{time = 0 + 500, x = bga_offset + 1378 - 149 - 250, y = 157, w = 149, h = 810, a = 0},
				{time = 0 + 500, x = bga_offset + 1378 - 149 - 250, y = 157, w = 149, h = 810, a = 255},
				{time = 250 + 500, x = bga_offset + 1378 - 149 - 62, y = 157, w = 149, h = 810, a = 255},
				{time = 375 + 500, x = bga_offset + 1378 - 149 - 16, y = 157, w = 149, h = 810, a = 255},
				{time = 500 + 500, x = bga_offset + 1378 - 149, y = 157, w = 149, h = 810, a = 255},

			}})
		end
	if not property.isGraphEnabled() then
		table.insert(t, {id = "bgaframe-side-stripes", loop = 1000, op = {2001}, dst = { 
			{time = 0 + 500, x = bga_offset + 250, y = 157, w = 149, h = 810, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 0 + 500, x = bga_offset + 250, y = 157, w = 149, h = 810, a = 255},
			{time = 250 + 500, x = bga_offset + 62, y = 157, w = 149, h = 810, a = 255},
			{time = 375 + 500, x = bga_offset + 16, y = 157, w = 149, h = 810, a = 255},
			{time = 500 + 500, x = bga_offset, y = 157, w = 149, h = 810, a = 255},
		}})
		table.insert(t, {id = "bgaframe-side-stripes", loop = 1000, op = {2001}, dst = { 
			{time = 0 + 500, x = bga_offset - 250 + 1378, y = 157, w = -149, h = 810, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 0 + 500, x = bga_offset - 250 + 1378, y = 157, w = -149, h = 810, a = 255},
			{time = 250 + 500, x = bga_offset - 62 + 1378, y = 157, w = -149, h = 810, a = 255},
			{time = 375 + 500, x = bga_offset - 16 + 1378, y = 157, w = -149, h = 810, a = 255},
			{time = 500 + 500, x = bga_offset + 1378, y = 157, w = -149, h = 810, a = 255},
		}})
	end
	table.insert(t, {id = "bgaframe-base-video", op = {2281}, loop = 500, dst = { 
			{time = 0, x = bga_offset + video_x + 1080/4, y = 157 + 810/4, w = 1080/2, h = 810/2, a = 0},
			{time = 250, x = bga_offset + video_x + 1080/16, y = 157 + 810/16, w = 1080 - 1080/2 * 1/4, h = 810 - 810/2 * 1/4, a = 128},
			{time = 375, x = bga_offset + video_x + 1080/64, y = 157 + 810/64, w = 1080 - 1080/2 * 1/16, h = 810 - 810/2 * 1/16, a = 192},
			{time = 500, x = bga_offset + video_x, y = 157, w = 1080, h = 810, a = 255},
		}})
	table.insert(t, {id = "bgaframe-base-webcam", op = {2282}, loop = 500, dst = { 
			{time = 0, x = bga_offset + video_x + 1080/4, y = 157 + 810/4, w = 1080/2, h = 810/2, a = 0},
			{time = 250, x = bga_offset + video_x + 1080/16, y = 157 + 810/16, w = 1080 - 1080/2 * 1/4, h = 810 - 810/2 * 1/4, a = 128},
			{time = 375, x = bga_offset + video_x + 1080/64, y = 157 + 810/64, w = 1080 - 1080/2 * 1/16, h = 810 - 810/2 * 1/16, a = 192},
			{time = 500, x = bga_offset + video_x, y = 157, w = 1080, h = 810, a = 255},
		}})
	if property.customFrame() then
		table.insert(t, {id = "overlay-base", loop = 500, blend = 4, dst = { 
			{time = 0, x = lane_offset, y = 500, w = 542, h = 1080, a = 0},
			{time = 250, x = lane_offset, y = 125, w = 542, h = 1080, a = 128},
			{time = 375, x = lane_offset, y = 31, w = 542, h = 1080, a = 192},
			{time = 500, x = lane_offset, y = 0, w = 542, h = 1080, a = 255},
		}})
		table.insert(t, {id = "overlay-bottom", loop = 500, blend = 4, dst = { 
			{time = 0, x = bga_offset, y = 0 - 500, w = 1378, h = 157, a = 0},
			{time = 250, x = bga_offset, y = 0 - 125, w = 1378, h = 157, a = 128},
			{time = 375, x = bga_offset, y = 0 - 31, w = 1378, h = 157, a = 192},
			{time = 500, x = bga_offset, y = 0, w = 1378, h = 157, a = 255},
		}})
		table.insert(t, {id = "overlay-top", loop = 500, blend = 4, dst = { 
			{time = 0, x = bga_offset, y = 967 + 500, w = 1378, h = 113, a = 0},
			{time = 250, x = bga_offset, y = 967 + 125, w = 1378, h = 113, a = 128},
			{time = 375, x = bga_offset, y = 967 + 31, w = 1378, h = 113, a = 192},
			{time = 500, x = bga_offset, y = 967, w = 1378, h = 113, a = 255},
		}})
		table.insert(t, {id = "overlay-video", loop = 500, op = {2281}, blend = 4, dst = { 
			{time = 0, x = bga_offset + video_x + 1080/4, y = 157 + 810/4, w = 1080/2, h = 810/2, a = 0},
			{time = 250, x = bga_offset + video_x + 1080/16, y = 157 + 810/16, w = 1080 - 1080/2 * 1/4, h = 810 - 810/2 * 1/4, a = 128},
			{time = 375, x = bga_offset + video_x + 1080/64, y = 157 + 810/64, w = 1080 - 1080/2 * 1/16, h = 810 - 810/2 * 1/16, a = 192},
			{time = 500, x = bga_offset + video_x, y = 157, w = 1080, h = 810, a = 255},
		}})
		table.insert(t, {id = "overlay-webcam", loop = 500, op = {2282}, blend = 4, dst = { 
			{time = 0, x = bga_offset + video_x + 1080/4, y = 157 + 810/4, w = 1080/2, h = 810/2, a = 0},
			{time = 250, x = bga_offset + video_x + 1080/16, y = 157 + 810/16, w = 1080 - 1080/2 * 1/4, h = 810 - 810/2 * 1/4, a = 128},
			{time = 375, x = bga_offset + video_x + 1080/64, y = 157 + 810/64, w = 1080 - 1080/2 * 1/16, h = 810 - 810/2 * 1/16, a = 192},
			{time = 500, x = bga_offset + video_x, y = 157, w = 1080, h = 810, a = 255},
		}})
	else
		table.insert(t, {id = "laneframe-mult", loop = 500, blend = 4, dst = { 
			{time = 0, x = lane_offset, y = 0, w = 542, h = 1080, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
		}})
		table.insert(t, {id = "laneframe-mult", loop = 500, blend = 4, dst = { 
			{time = 0, x = bga_offset, y = 0, w = 1378, h = 157, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
		}})
		table.insert(t, {id = "laneframe-mult", loop = 500, blend = 4, dst = { 
			{time = 0, x = bga_offset, y = 967, w = 1378, h = 113, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
		}})
		table.insert(t, {id = "laneframe-mult", loop = 500, blend = 4, dst = { 
			{time = 0, x = bga_offset + video_x, y = 157, w = 1080, h = 810, r = skin_config.offset["Frame RGB (0-255)"].x, g = skin_config.offset["Frame RGB (0-255)"].y, b = skin_config.offset["Frame RGB (0-255)"].w},
		}})
	end
	table.insert(t, {id = "laneframe-stripes", loop = 500, op = {2001}, dst = { 
			{time = 0, x = lane_offset, y = 500, w = 542, h = 1080, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 250, x = lane_offset, y = 125, w = 542, h = 1080, a = 128},
			{time = 375, x = lane_offset, y = 31, w = 542, h = 1080, a = 192},
			{time = 500, x = lane_offset, y = 0, w = 542, h = 1080, a = 255},
		}})
	table.insert(t, {id = "bgaframe-bottom-stripes", loop = 500, op = {2001}, dst = { 
			{time = 0, x = bga_offset, y = 0 - 500, w = 1378, h = 157, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 250, x = bga_offset, y = 0 - 125, w = 1378, h = 157, a = 128},
			{time = 375, x = bga_offset, y = 0 - 31, w = 1378, h = 157, a = 192},
			{time = 500, x = bga_offset, y = 0, w = 1378, h = 157, a = 255},
		}})
	table.insert(t, {id = "bgaframe-top-stripes", loop = 500, op = {2001}, dst = { 
			{time = 0, x = bga_offset, y = 967 + 500, w = 1378, h = 113, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 250, x = bga_offset, y = 967 + 125, w = 1378, h = 113, a = 128},
			{time = 375, x = bga_offset, y = 967 + 31, w = 1378, h = 113, a = 192},
			{time = 500, x = bga_offset, y = 967, w = 1378, h = 113, a = 255},
		}})
	table.insert(t, {id = "bgaframe-video-stripes", loop = 500, op = {2001, 2281}, dst = { 
			{time = 0, x = bga_offset + video_x + 1080/4, y = 157 + 810/4, w = 1080/2, h = 810/2, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 250, x = bga_offset + video_x + 1080/16, y = 157 + 810/16, w = 1080 - 1080/2 * 1/4, h = 810 - 810/2 * 1/4, a = 128},
			{time = 375, x = bga_offset + video_x + 1080/64, y = 157 + 810/64, w = 1080 - 1080/2 * 1/16, h = 810 - 810/2 * 1/16, a = 192},
			{time = 500, x = bga_offset + video_x, y = 157, w = 1080, h = 810, a = 255},
		}})
	table.insert(t, {id = "bgaframe-webcam-stripes", loop = 500, op = {2001, 2282}, dst = { 
			{time = 0, x = bga_offset + video_x + 1080/4, y = 157 + 810/4, w = 1080/2, h = 810/2, a = 0, r = skin_config.offset["Stipes RGB (0-255)"].x, g = skin_config.offset["Stipes RGB (0-255)"].y, b = skin_config.offset["Stipes RGB (0-255)"].w},
			{time = 250, x = bga_offset + video_x + 1080/16, y = 157 + 810/16, w = 1080 - 1080/2 * 1/4, h = 810 - 810/2 * 1/4, a = 128},
			{time = 375, x = bga_offset + video_x + 1080/64, y = 157 + 810/64, w = 1080 - 1080/2 * 1/16, h = 810 - 810/2 * 1/16, a = 192},
			{time = 500, x = bga_offset + video_x, y = 157, w = 1080, h = 810, a = 255},
		}})
	table.insert(t, {id = "laneframe", op = {2161}, loop = 500, dst = { 
			{time = 0, x = lane_offset, y = 500, w = 542, h = 1080, a = 0},
			{time = 250, x = lane_offset, y = 125, w = 542, h = 1080, a = 128},
			{time = 375, x = lane_offset, y = 31, w = 542, h = 1080, a = 192},
			{time = 500, x = lane_offset, y = 0, w = 542, h = 1080, a = 255},
		}})
	table.insert(t, {id = "bgaframe-bottom", op = {2161}, loop = 500, dst = { 
			{time = 0, x = bga_offset, y = 0 - 500, w = 1378, h = 157, a = 0},
			{time = 250, x = bga_offset, y = 0 - 125, w = 1378, h = 157, a = 128},
			{time = 375, x = bga_offset, y = 0 - 31, w = 1378, h = 157, a = 192},
			{time = 500, x = bga_offset, y = 0, w = 1378, h = 157, a = 255},
		}})
	table.insert(t, {id = "bgaframe-top", op = {2161}, loop = 500, dst = { 
			{time = 0, x = bga_offset, y = 967 + 500, w = 1378, h = 113, a = 0},
			{time = 250, x = bga_offset, y = 967 + 125, w = 1378, h = 113, a = 128},
			{time = 375, x = bga_offset, y = 967 + 31, w = 1378, h = 113, a = 192},
			{time = 500, x = bga_offset, y = 967, w = 1378, h = 113, a = 255},
		}})
	if not property.isGraphEnabled() then
		table.insert(t, {id = "bgaframe-side", op = {2161}, loop = 1000, dst = { 
			{time = 0 + 500, x = bga_offset + 250, y = 157, w = 149, h = 810, a = 0},
			{time = 0 + 500, x = bga_offset + 250, y = 157, w = 149, h = 810, a = 255},
			{time = 250 + 500, x = bga_offset + 62, y = 157, w = 149, h = 810, a = 255},
			{time = 375 + 500, x = bga_offset + 16, y = 157, w = 149, h = 810, a = 255},
			{time = 500 + 500, x = bga_offset, y = 157, w = 149, h = 810, a = 255},
		}})
		table.insert(t, {id = "bgaframe-side", op = {2161}, loop = 1000, dst = { 
			{time = 0 + 500, x = bga_offset - 250 + 1378, y = 157, w = -149, h = 810, a = 0},
			{time = 0 + 500, x = bga_offset - 250 + 1378, y = 157, w = -149, h = 810, a = 255},
			{time = 250 + 500, x = bga_offset - 62 + 1378, y = 157, w = -149, h = 810, a = 255},
			{time = 375 + 500, x = bga_offset - 16 + 1378, y = 157, w = -149, h = 810, a = 255},
			{time = 500 + 500, x = bga_offset + 1378, y = 157, w = -149, h = 810, a = 255},
		}})
	end
	table.insert(t, {id = "bgaframe-video", op = {2161, 2281}, loop = 500, dst = { 
			{time = 0, x = bga_offset + video_x + 1080/4, y = 157 + 810/4, w = 1080/2, h = 810/2, a = 0},
			{time = 250, x = bga_offset + video_x + 1080/16, y = 157 + 810/16, w = 1080 - 1080/2 * 1/4, h = 810 - 810/2 * 1/4, a = 128},
			{time = 375, x = bga_offset + video_x + 1080/64, y = 157 + 810/64, w = 1080 - 1080/2 * 1/16, h = 810 - 810/2 * 1/16, a = 192},
			{time = 500, x = bga_offset + video_x, y = 157, w = 1080, h = 810, a = 255},
		}})
	table.insert(t, {id = "bga-disp", loop = 500, stretch = 1, op = {2281, 41}, dst = { 
			{time = 0, x = property.constants.bga_x + video_x - 149 + 500 * direction_mult, y = 0 + property.constants.bga_y, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 250, x = property.constants.bga_x + video_x - 149 + 125 * direction_mult, y = 0 + property.constants.bga_y, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 375, x = property.constants.bga_x + video_x - 149 + 31 * direction_mult, y = 0 + property.constants.bga_y, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 500, x = property.constants.bga_x + video_x - 149, y = 0 + property.constants.bga_y, w = property.constants.bga_w, h = property.constants.bga_h, a = 0},
			{time = 500, a = 255}
		}})
	
	table.insert(t, {id = "bgaframe-webcam", op = {2161, 2282}, loop = 500, dst = { 
			{time = 0, x = bga_offset + video_x + 1080/4, y = 157 + 810/4, w = 1080/2, h = 810/2, a = 0},
			{time = 250, x = bga_offset + video_x + 1080/16, y = 157 + 810/16, w = 1080 - 1080/2 * 1/4, h = 810 - 810/2 * 1/4, a = 128},
			{time = 375, x = bga_offset + video_x + 1080/64, y = 157 + 810/64, w = 1080 - 1080/2 * 1/16, h = 810 - 810/2 * 1/16, a = 192},
			{time = 500, x = bga_offset + video_x, y = 157, w = 1080, h = 810, a = 255},
		}})
	table.insert(t, {id = "bga-disp", loop = 500, stretch = 1, op = {41, 2282}, dst = { 
			{time = 0, x = property.constants.bga_x + video_x - 149 + 184, y = property.constants.bga_y + 276, w = 692, h = 514, a = 0},
			{time = 250, x = property.constants.bga_x + video_x - 149 + 184, y = property.constants.bga_y + 276, w = 692, h = 514, a = 0},
			{time = 375, x = property.constants.bga_x + video_x - 149 + 184, y = property.constants.bga_y + 276, w = 692, h = 514, a = 0},
			{time = 500, x = property.constants.bga_x + video_x - 149 + 184, y = property.constants.bga_y + 276, w = 692, h = 514, a = 0},
			{time = 500, a = 255}
		}})
	
	return t
end

local Frame = Objects.new({LaneFrame})

return Frame