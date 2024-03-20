local consts = require "consts"
local property = require "lua_dp/property_funcs"
local Object = require "object"
local Objects = require "objects"
local utils = require "utils"

local notes = Object.new()
function notes.image()
	t = {}
	table.insert(t, {id = "section-line", src = "src-barline", x = 0, y = 0, w = 1, h = 1})
	for i, v in ipairs(property.constants.note_image_x) do
		table.insert(t, {id = "note-"..i, src = "src-note", x = v, y = property.constants.note_image_y, w = property.constants.note_width[i], h = property.constants.note_height})
		table.insert(t, {id = "lne-"..i, src = "src-lnote", x = v, y = property.constants.note_image_y + 12, w = property.constants.note_width[i], h = property.constants.note_height})
		table.insert(t, {id = "lns-"..i, src = "src-lnote", x = v, y = property.constants.note_image_y + 36, w = property.constants.note_width[i], h = property.constants.note_height})
		table.insert(t, {id = "lna-"..i, src = "src-lnote", x = v, y = property.constants.note_image_y + 72, w = property.constants.note_width[i], h = property.constants.note_height})
		table.insert(t, {id = "lnb-"..i, src = "src-lnote", x = v, y = property.constants.note_image_y + 108, w = property.constants.note_width[i], h = 72, divy = 2, cycle = 266})
		table.insert(t, {id = "hcne-"..i, src = "src-hcnote", x = v, y = property.constants.note_image_y + 12, w = property.constants.note_width[i], h = property.constants.note_height})
		table.insert(t, {id = "hcns-"..i, src = "src-hcnote", x = v, y = property.constants.note_image_y + 36, w = property.constants.note_width[i], h = property.constants.note_height})
		table.insert(t, {id = "hcna-"..i, src = "src-hcnote", x = v, y = property.constants.note_image_y + 72, w = property.constants.note_width[i], h = property.constants.note_height})
		table.insert(t, {id = "hcnb-"..i, src = "src-hcnote", x = v, y = property.constants.note_image_y + 108, w = property.constants.note_width[i], h = 72, divy = 2, cycle = 266})
		table.insert(t, {id = "hcnr-"..i, src = "src-hcnote", x = v, y = property.constants.note_image_y + 180, w = property.constants.note_width[i], h = 72, divy = 2, cycle = 100})
		table.insert(t, {id = "hcnd-"..i, src = "src-hcnote", x = v, y = property.constants.note_image_y + 108, w = property.constants.note_width[i], h = 72, divy = 2, cycle = 266})
	end
	return t
end

function notes.note()
	t = {
		id = "notes",
		note = {},
		lnend = {},
		lnstart = {},
		lnbody = {},
		lnactive = {},
		hcnend = {},
		hcnstart = {},
		hcnbody = {},
		hcnactive = {},
		hcndamage = {},
		hcnreactive = {},
		mine = {},
		hidden = {},
		processed = {},
		size = property.constants.note_heights,
		dst = {},
		group = {
			{id = "section-line", offsets = {3}, dst = {
					{x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.note_total_width, h = property.constants.lane_outline_width, r = 255, g = 255, b = 255}
				}},
			{id = "section-line", offsets = {3}, dst = {
					{x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.note_total_width, h = property.constants.lane_outline_width, r = 255, g = 255, b = 255}
				}}
		},
		time = {
			{id = "section-line", offsets = {3}, dst = {
					{x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.note_total_width, h = property.constants.lane_outline_width, r = 255, g = 255, b = 255}
				}},
			{id = "section-line", offsets = {3}, dst = {
					{x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.note_total_width, h = property.constants.lane_outline_width, r = 255, g = 255, b = 255}
				}}
		},
		bpm = {
			{id = "section-line", offsets = {3}, dst = {
					{x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.note_total_width, h = property.constants.lane_outline_width, r = 255, g = 255, b = 255}
				}},
			{id = "section-line", offsets = {3}, dst = {
					{x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.note_total_width, h = property.constants.lane_outline_width, r = 255, g = 255, b = 255}
				}}
		},
		stop = {
			{id = "section-line", offsets = {3}, dst = {
					{x = property.constants.lane_x_location_p1 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.note_total_width, h = property.constants.lane_outline_width, r = 255, g = 255, b = 255}
				}},
			{id = "section-line", offsets = {3}, dst = {
					{x = property.constants.lane_x_location_p2 + property.constants.lane_outline_width, y = property.constants.lane_y_location + property.constants.lane_outline_width, w = property.constants.note_total_width, h = property.constants.lane_outline_width, r = 255, g = 255, b = 255}
				}}
		}
	}
	for i, v in ipairs(property.constants.note_position_x_p1_5key) do
		table.insert(t.note, "note-"..i)
		table.insert(t.lnend,"lne-"..i)
		table.insert(t.lnstart, "lns-"..i)
		table.insert(t.lnbody, "lnb-"..i)
		table.insert(t.lnactive, "lna-"..i)
		table.insert(t.hcnend, "hcne-"..i)
		table.insert(t.hcnstart, "hcns-"..i)
		table.insert(t.hcnbody, "hcnb-"..i)
		table.insert(t.hcnactive, "hcna-"..i)
		table.insert(t.hcndamage, "hcnd-"..i)
		table.insert(t.hcnreactive, "hcnr-"..i)
		table.insert(t.mine, "mine-"..i)
		table.insert(t.dst, {x = v + property.constants.lane_x_location_p1, y = property.constants.note_position_y  + property.constants.lane_y_location, w = property.constants.note_width[i], h = 1080 - property.constants.lane_y_location - property.constants.lane_outline_width})
	end
	for i, v in ipairs(property.constants.note_position_x_p2_5key) do
		table.insert(t.note, "note-"..i)
		table.insert(t.lnend,"lne-"..i)
		table.insert(t.lnstart, "lns-"..i)
		table.insert(t.lnbody, "lnb-"..i)
		table.insert(t.lnactive, "lna-"..i)
		table.insert(t.hcnend, "hcne-"..i)
		table.insert(t.hcnstart, "hcns-"..i)
		table.insert(t.hcnbody, "hcnb-"..i)
		table.insert(t.hcnactive, "hcna-"..i)
		table.insert(t.hcndamage, "hcnd-"..i)
		table.insert(t.hcnreactive, "hcnr-"..i)
		table.insert(t.mine, "mine-"..i)
		table.insert(t.dst, {x = v + property.constants.lane_x_location_p2, y = property.constants.note_position_y  + property.constants.lane_y_location, w = property.constants.note_width[i], h = 1080 - property.constants.lane_y_location - property.constants.lane_outline_width})
	end
	return {t}
end

function notes.destination()
	return {{id = "notes"}}
end

local Notes = Objects.new({notes})

return Notes