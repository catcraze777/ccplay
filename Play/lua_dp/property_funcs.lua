property = require("property_dp")

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
function property.verticalGrooveGauge()
	return skin_config.option["Vertical Groove Gauge"] == 2192
end

return property