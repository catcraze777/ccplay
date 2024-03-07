property = {}

property.property = {}
table.insert(property.property, {
	name = "Lane Position", category = "Lane Position", item = {
		{name = "1P", op = 900},
		{name = "2P", op = 901}
	}
})
table.insert(property.property, {
	name = "Toggle Frame Stripes", category = "Toggle Frame Stripes", item = {
		{name = "On", op = 2001},
		{name = "Off", op = 2002}
	}
})
table.insert(property.property, {
	name = "Toggle Frame Details", category = "Toggle Frame Details", item = {
		{name = "On", op = 2161},
		{name = "Off", op = 2162}
	}
})
table.insert(property.property, {
	name = "Frame Visuals", category = "Frame Visuals", item = {
		{name = "Shaded", op = 2061},
		{name = "Flat", op = 2062}
	}
})
table.insert(property.property, {
	name = "Frame Rainbow", category = "Frame Rainbow", item = {
		{name = "Off", op = 2071},
		{name = "On", op = 2072}
	}
})
table.insert(property.property, {
	name = "Groove Gauge", category = "Groove Gauge", item = {
		{name = "On", op = 2041},
		{name = "Off", op = 2042},
		{name = "Rainbow", op = 2043}
	}
})
table.insert(property.property, {
	name = "Groove Num", category = "Groove Num", item = {
		{name = "On", op = 2051},
		{name = "Off", op = 2052}
	}
})
table.insert(property.property, {
	name = "Toggle Graph", category = "Toggle Graph", item = {
		{name = "Off", op = 2011},
		{name = "On", op = 2012}
	}
})
table.insert(property.property, {
	name = "Graph Side", category = "Graph Side", item = {
		{name = "Left", op = 2021},
		{name = "Right", op = 2022}
	}
})
table.insert(property.property, {
	name = "Graph Personal Best Only", category = "Graph Personal Best Only", item = {
		{name = "Off", op = 2031},
		{name = "On", op = 2032}
	}
})
table.insert(property.property, {
	name = "Custom Frame", category = "Custom Frame", item = {
		{name = "Off", op = 2101},
		{name = "On", op = 2102}
	}
})
table.insert(property.property, {
	name = "Custom Sudden Cover", category = "Custom Sudden Cover", item = {
		{name = "Off", op = 2081},
		{name = "On", op = 2082}
	}
})
table.insert(property.property, {
	name = "Custom Lift Cover", category = "Custom Lift Cover", item = {
		{name = "Off", op = 2091},
		{name = "On", op = 2092}
	}
})
table.insert(property.property, {
	name = "Fast/Slow", category = "Fast/Slow", item = {
		{name = "Off", op = 2111},
		{name = "Type-A", op = 2112},
		{name = "Type-B", op = 2113},
		{name = "Type-C", op = 2114}
	}
})
table.insert(property.property, {
	name = "Ghost Score", category = "Ghost Score", item = {
		{name = "Off", op = 2121},
		{name = "Type-A", op = 2122},
		{name = "Type-B", op = 2123},
		{name = "Type-C", op = 2124}
	}
})
table.insert(property.property, {
	name = "Ghost Target", category = "Ghost Target", item = {
		{name = "Target", op = 2131},
		{name = "Personal Best", op = 2132}
	}
})
table.insert(property.property, {
	name = "Play Information", category = "Play Information", item = {
		{name = "Off", op = 2141},
		{name = "On", op = 2142}
	}
})
table.insert(property.property, {
	name = "Note Graph", category = "Notes Graph", item = {
		{name = "Off", op = 2151},
		{name = "Note Display", op = 2152},
		{name = "Judge Display", op = 2153},
		{name = "Fast/Slow Display", op = 2154},
		{name = "Timing Visualizer", op = 2155}
	}
})

property.filepath = {}
table.insert(property.filepath, {name = "Sudden Cover", category = "Sudden Cover", path = "custom/sudden/*.png", def = "Default"})
table.insert(property.filepath, {name = "Lift Cover", category = "Lift Cover", path = "custom/lift/*.png", def = "Default"})
table.insert(property.filepath, {name = "Graph Background", category = "Graph Background", path = "custom/graph/*.png", def = "Default"})
table.insert(property.filepath, {name = "Custom Frame Overlay", category = "Custom Frame File", path = "custom/frame/*.png", def = "Default"})
table.insert(property.filepath, {name = "Custom Turntable", category = "Custom Turntable", path = "custom/turntable/*.png", def = "Default"})
table.insert(property.filepath, {name = "Custom Keyflash", category = "Custom Keyflash", path = "custom/keyflash/*.png", def = "Default"})
table.insert(property.filepath, {name = "Custom Keybeam", category = "Custom Keybeam", path = "custom/keybeam/*.png", def = "Default"})

property.offset = {}
table.insert(property.offset, {
	name = "Frame RGB (0-255)", category = "Frame RGB (0-255)", id = 48, x = 0, y = 0, w = 0
})
table.insert(property.offset, {
	name = "Stipes RGB (0-255)", category = "Stipes RGB (0-255)", id = 48, x = 0, y = 0, w = 0
})
table.insert(property.offset, {
	name = "Judge Text Offset", category = "Judge Text Offset", id = 48, y = 0
})

property.category = {
	{name = "Frame Options", item = {
		"Lane Position",
		"Toggle Frame Stripes",
		"Toggle Frame Details",
		"Frame Visuals",
		"Frame Rainbow",
		"Custom Turntable",
		"Custom Keyflash",
		"Custom Keybeam",
		"Custom Frame",
		"Custom Frame File",
		"Frame RGB (0-255)",
		"Stipes RGB (0-255)"
	}},
	{name = "Play Options", item = {
		"Toggle Graph",
		"Graph Side",
		"Graph Personal Best Only",
		"Graph Background",
		"Groove Gauge",
		"Groove Num",
		"Custom Sudden Cover",
		"Sudden Cover",
		"Custom Lift Cover",
		"Lift Cover",
		"Fast/Slow",
		"Ghost Score",
		"Ghost Target",
		"Play Information",
		"Notes Graph"
	}},
}

property.constants = {
	lane_width_ac = 437,
	lane_height_ac = 1024,
	lane_x_location_p1 = 73,
	lane_x_location_p2 = 1410,
	lane_y_location = 355,
	lane_outline_width = 3,
	note_position_x_p1 = {96, 149, 192, 245, 288, 341, 384, 3},
	note_position_x_p2 = {3, 56, 99, 152, 195, 248, 291, 344},
	note_position_x_p1_5key = {96, 149, 192, 245, 288, 3},
	note_position_x_p2_5key = {99, 152, 195, 248, 291, 344},
	note_image_x = {180, 230, 180, 230, 180, 230, 180, 90},
	note_image_x_5key = {180, 230, 180, 230, 180, 90},
	note_width = {50, 40, 50, 40, 50, 40, 50, 90},
	note_width_5key = {50, 40, 50, 40, 50, 90},
	note_total_width = 431,
	note_height = 24,
	note_heights = {24, 24, 24, 24, 24, 24, 24, 24},
	note_heights_5key = {24, 24, 24, 24, 24, 24},
	note_position_y = 3,
	note_image_y = 0,
	judgeline_height = 10,
	groove_num_x_p1 = 414,
	groove_num_x_p2 = 1391,
	groove_num_y = 183,
	groove_gauge_x_p1 = 22,
	groove_gauge_x_p2 = 1898,
	groove_gauge_y = 149,
	difficulty_x_p1 = 18,
	difficulty_x_p2 = 1394,
	difficulty_y = 61,
	difficulty_lv_x = 378,
	difficulty_lv_y = 17,
	bga_x_p1 = 701,
	bga_x_p2 = 159,
	bga_y = 167,
	bga_w = 1060,
	bga_h = 790,
	bga_frame_x_p1 = 542,
	bga_frame_x_p2 = 0
}

return property
