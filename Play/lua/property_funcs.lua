property = require("property")

function property.is1pLane()
	return skin_config.option["Lane Position"] == 900
end
function property.is2pLane()
	return skin_config.option["Lane Position"] == 901
end
function property.isGraphEnabled()
	return skin_config.option["Toggle Graph"] == 2012
end
function property.graphLeftSide()
	return skin_config.option["Graph Side"] == 2021
end
function property.grooveGaugeOn()
	return skin_config.option["Groove Gauge"] ~= 2042
end
function property.grooveGaugeRainbow()
	return skin_config.option["Groove Gauge"] == 2043
end
function property.shadedFrame()
	return skin_config.option["Frame Visuals"] == 2061
end
function property.rainbowFrame()
	return skin_config.option["Frame Rainbow"] == 2072
end
function property.customSudden()
	return skin_config.option["Custom Sudden Cover"] == 2082
end
function property.customLift()
	return skin_config.option["Custom Lift Cover"] == 2092
end
function property.customFrame()
	return skin_config.option["Custom Frame"] == 2102
end

if property.is1pLane() then
	property.constants.lane_x_location = property.constants.lane_x_location_p1
	property.constants.note_position_x = property.constants.note_position_x_p1
	property.constants.note_position_x_5key = property.constants.note_position_x_p1_5key
	property.constants.groove_num_x = property.constants.groove_num_x_p1
	property.constants.groove_gauge_x = property.constants.groove_gauge_x_p1
	property.constants.difficulty_x = property.constants.difficulty_x_p1
	property.constants.bga_x = property.constants.bga_x_p1
	property.constants.bga_frame_x = property.constants.bga_frame_x_p1
else
	property.constants.lane_x_location = property.constants.lane_x_location_p2
	property.constants.note_position_x = property.constants.note_position_x_p2
	property.constants.note_position_x_5key = property.constants.note_position_x_p2_5key
	property.constants.groove_num_x = property.constants.groove_num_x_p2
	property.constants.groove_gauge_x = property.constants.groove_gauge_x_p2
	property.constants.difficulty_x = property.constants.difficulty_x_p2
	property.constants.bga_x = property.constants.bga_x_p2
	property.constants.bga_frame_x = property.constants.bga_frame_x_p2
end

return property