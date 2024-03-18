local function append_all(list, list1)
	for i, v in ipairs(list1) do
		table.insert(list, v)
	end
end

local consts = require("consts")
local main_state = require("main_state")
local utils = require("utils")
local Object = require("object")
local Objects = require("objects")
local property = require("property")

local main = {}

function main.skin(skintype, playstyle)
	
	local header = {
		type = skintype,
		name = "CC-Play Vers 1.2",
		w = 1920,
		h = 1080,
		loadend = 3500,
		playstart = 1200,
		scene = 3600000,
		input = 0,
		close = 3000,
		fadeout = 500,
		property = property.property,
		filepath = property.filepath,
		offset = property.offset,
		category = property.category
	}
	
	if skintype == consts.SKINTYPE_5KEYS then
		table.insert(header.property, {
		name = "Enable Key Cover", category = "Enable Key Cover", item = {
			{name = "On", op = 2171},
			{name = "Off", op = 2172}
		}})
	end

	local function body()
		property = require("lua/property_funcs")
		
		local skin = {}
		for k, v in pairs(header) do
			skin[k] = v
		end

		skin.source = {}
		table.insert(skin.source, {id = "src-common", path = "img/common/main.png"})
		table.insert(skin.source, {id = "src-lane", path = "img/common/lane/lane01.png"})
		table.insert(skin.source, {id = "src-note", path = "custom/notes/*/notes.png"})
		table.insert(skin.source, {id = "src-lnote", path = "custom/notes/*/longnotes.png"})
		table.insert(skin.source, {id = "src-hcnote", path = "custom/notes/*/hellchargenotes.png"})
		table.insert(skin.source, {id = "src-barline", path = "img/common/barline/Default.png"})
		table.insert(skin.source, {id = "src-judgeline", path = "img/common/barline/red.png"})
		if property.customLift() then
			table.insert(skin.source, {id = "src-lift", path = "custom/lift/*.png"})
			table.insert(skin.source, {id = "src-hidden", path = "custom/lift/*.png"})
		else
			table.insert(skin.source, {id = "src-lift", path = "img/common/lift/Default.png"})
			table.insert(skin.source, {id = "src-hidden", path = "img/common/lift/Default.png"})
		end
		
		if property.customSudden() then
			table.insert(skin.source, {id = "src-sudden", path = "custom/sudden/*.png"})
		else
			table.insert(skin.source, {id = "src-sudden", path = "img/common/sudden/Default.png"})
		end
		
		table.insert(skin.source, {id = "src-keyflash", path = "custom/keyflash/*.png"})
		table.insert(skin.source, {id = "src-keybeam", path = "custom/keybeam/*.png"})
		table.insert(skin.source, {id = "src-bomb", path = "img/common/lane/bomb.png"})
		table.insert(skin.source, {id = "src-emblem", path = "custom/turntable/*.png"})
		table.insert(skin.source, {id = "src-graph", path = "custom/graph/*.png"})
		table.insert(skin.source, {id = "src-failed", path = "img/common/lane_frame/failed.png"})
		
		if property.is1pLane() and property.shadedFrame() then
			table.insert(skin.source, {id = "src-laneframe", path = "img/common/lane_frame/laneframe_custom_p1.png"})
			table.insert(skin.source, {id = "src-laneframe-base", path = "img/common/lane_frame/laneframe_custom_p1_base.png"})
			table.insert(skin.source, {id = "src-laneframe-stripes", path = "img/common/lane_frame/laneframe_custom_p1_stripes.png"})
		elseif property.is1pLane() then
			table.insert(skin.source, {id = "src-laneframe", path = "img/common/lane_frame/laneframe_custom_p1.png"})
			table.insert(skin.source, {id = "src-laneframe-base", path = "img/common/lane_frame/laneframe_custom_p1_base_noshade.png"})
			table.insert(skin.source, {id = "src-laneframe-stripes", path = "img/common/lane_frame/laneframe_custom_p1_stripes_noshade.png"})
		elseif property.is2pLane() and property.shadedFrame() then
			table.insert(skin.source, {id = "src-laneframe", path = "img/common/lane_frame/laneframe_custom_p2.png"})
			table.insert(skin.source, {id = "src-laneframe-base", path = "img/common/lane_frame/laneframe_custom_p2_base.png"})
			table.insert(skin.source, {id = "src-laneframe-stripes", path = "img/common/lane_frame/laneframe_custom_p2_stripes.png"})
		elseif property.is2pLane() then
			table.insert(skin.source, {id = "src-laneframe", path = "img/common/lane_frame/laneframe_custom_p2.png"})
			table.insert(skin.source, {id = "src-laneframe-base", path = "img/common/lane_frame/laneframe_custom_p2_base_noshade.png"})
			table.insert(skin.source, {id = "src-laneframe-stripes", path = "img/common/lane_frame/laneframe_custom_p2_stripes_noshade.png"})
		end
		if property.customFrame() then
			table.insert(skin.source, {id = "src-laneframe-overlay", path = "custom/frame/*.png"})
		else
			table.insert(skin.source, {id = "src-laneframe-overlay", path = "img/common/lane_frame/default_custom.png"})
		end
		
		skin.image = {}
		
		skin.imageset = {}
		
		skin.value = {}
		
		skin.font = {}
		table.insert(skin.font, {id = 0, path = "font/BAHNSCHRIFT.TTF"})
		table.insert(skin.font, {id = 1, path = "font/NotoSansJP-Bold.ttf"})
		
		skin.text = {}
		table.insert(skin.text, {id = "font-song-title", font = 1, overflow = 1, size = 48, align = 1, ref = 10})
		table.insert(skin.text, {id = "font-song-artist", font = 1, overflow = 1, size = 24, align = 1, ref = 14})
		table.insert(skin.text, {id = "font-table", font = 1, overflow = 1, size = 24, align = 1, ref = 1003})
		table.insert(skin.text, {id = "font-song-title-large", font = 1, overflow = 1, size = 96, align = 1, ref = 10})
		table.insert(skin.text, {id = "font-song-artist-large", font = 1, overflow = 1, size = 48, align = 1, ref = 14})
		table.insert(skin.text, {id = "font-table-large", font = 1, overflow = 1, size = 48, align = 1, ref = 1003})
		table.insert(skin.text, {id = "failed-text", font = 1, overflow = 1, size = 300, align = 1, constantText = "FAILED"})
		
		skin.slider = {}

		skin.hiddenCover = {}
		
		skin.liftCover = {}
		
		skin.graph = {}
		
		skin.note = {}
		
		if property.grooveGaugeOn() then
			skin.gauge = {
				id = "groove-gauge",
				nodes = {"gauge-r1","gauge-p1","gauge-r2","gauge-p2","gauge-r1","gauge-p1",
					"gauge-r1","gauge-g1","gauge-r2","gauge-g2","gauge-r1","gauge-g1",
					"gauge-r1","gauge-b1","gauge-r2","gauge-b2","gauge-r1","gauge-b1",
					"gauge-r1","gauge-p1","gauge-r2","gauge-p2","gauge-r1","gauge-p1",
					"gauge-y1","gauge-p1","gauge-y2","gauge-p2","gauge-y1","gauge-p1",
					"gauge-w1","gauge-p1","gauge-w2","gauge-p2","gauge-w1","gauge-p1"}
			}
		else
			skin.gauge = {
				id = "groove-gauge",
				nodes = {"gauge-r2","gauge-p2","gauge-r2","gauge-p2","gauge-r2","gauge-p2",
					"gauge-r2","gauge-g2","gauge-r2","gauge-g2","gauge-r2","gauge-g2",
					"gauge-r2","gauge-b2","gauge-r2","gauge-b2","gauge-r2","gauge-b2",
					"gauge-r2","gauge-p2","gauge-r2","gauge-p2","gauge-r2","gauge-p2",
					"gauge-y2","gauge-p2","gauge-y2","gauge-p2","gauge-y2","gauge-p2",
					"gauge-w2","gauge-p2","gauge-w2","gauge-p2","gauge-w2","gauge-p2"}
			}

		end
	
		skin.judge = {}

		skin.bga = {
			id = "bga-disp"
		}

		skin.judgegraph = {
			{id = "notes-graph", delay = 0, backTexOff = 1, noGap = 1, type = 0},
			{id = "judgegraph-1", delay = 0, backTexOff = 1, orderReverse = 1 ,noGap = 1, type = 1},
			{id = "judgegraph-2", delay = 0, backTexOff = 1, orderReverse = 1, noGap = 1, type = 2}
		}

		skin.bpmgraph = {
			{id = "bpmgraph"}
		}

		skin.timingvisualizer = {
			{id = "timingvisualizer", colorMode = 0}
		}

		skin.destination = {}
		
		if skintype == consts.SKINTYPE_7KEYS then
			Lane = require "lua/lane"
			Notes = require "lua/notes"
			Covers = require "lua/covers"
			Bomb = require "lua/bomb"
		else
			Lane = require "lua/lane_5k"
			Notes = require "lua/notes_5k"
			Covers = require "lua/covers_5k"
			Bomb = require "lua/bomb_5k"
		end
		
		LaneFrame = require "lua/laneframe"
		Gauge = require "lua/gauge"
		Difficulty = require "lua/difficulty"
		Judge = require "lua/judge"
		BGAFrame = require "lua/bgaframe_parts"
		Failed = require "lua/failed"
		Graph = require "lua/graph"
		
		local lane = Lane.new()
		local notes = Notes.new()
		local covers = Covers.new()
		local frame = LaneFrame.new()
		local bomb = Bomb.new()
		local gauge = Gauge.new()
		local diff = Difficulty.new()
		local judge = Judge.new()
		local bgaframe = BGAFrame.new()
		local failed = Failed.new()
		local graph = Graph.new()
		
		local parts = Objects.new({graph, frame, bgaframe, lane, notes, gauge, diff, covers, bomb, judge, failed})
		
		utils.mergeArray(skin.image, parts:image())
		utils.mergeArray(skin.imageset, parts:imageset())
		utils.mergeArray(skin.source, parts:source())
		utils.mergeArray(skin.value, parts:value())
		utils.mergeArray(skin.text, parts:text())
		utils.mergeArray(skin.graph, parts:graph())
		utils.mergeArray(skin.slider, parts:slider())
		utils.mergeArray(skin.hiddenCover, parts:hiddenCover())
		utils.mergeArray(skin.liftCover, parts:liftCover())
		utils.mergeArray(skin.gauge, parts:gauge())
		utils.mergeArray(skin.judge, parts:judge())
		utils.mergeArray(skin.bga, parts:bga())
		utils.mergeArray(skin.judgegraph, parts:judgegraph())
		utils.mergeArray(skin.bpmgraph, parts:bpmgraph())
		utils.mergeArray(skin.timingvisualizer, parts:timingvisualizer())
		utils.mergeArray(skin.note, notes:note())
		--skin.note = notes.classes[1].note()
		skin.note = skin.note[1]
		utils.mergeArray(skin.destination, parts:destination())
		--table.insert(skin.destination, {id = "notes"})
		
		return skin
	end

	return {
		header = header,
		body = body
	}
end

return main
