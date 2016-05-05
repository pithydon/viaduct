viaduct = {}

function viaduct.register_custom(item, name, tile, sound, group, groupnici, recipe)
	local tile_collection
	if type(tile) == "string" then
		tile_collection[1] = tile
	else
		tile_collection = table.copy(tile)
	end

if group == "nil" then
	chop = minetest.get_item_group(recipe, "choppy")
	obbh = minetest.get_item_group(recipe, "oddly_breakable_by_hand")
	flam = minetest.get_item_group(recipe, "flammable")
	cgroup = {choppy=chop,oddly_breakable_by_hand=obbh,flammable=flam}
	nocgroup = {choppy=chop,oddly_breakable_by_hand=obbh,flammable=flam,not_in_creative_inventory=1}
else
	cgroup = group
	nocgroup = groupnici
end

minetest.register_node(":viaduct:"..item.."_bridge", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.375, 0.3125, 0.375, 0.375, 0.4375, 0.4375},
			{-0.375, -0.1875, 0.375, 0.375, -0.0625, 0.4375},
			{0.375, 0.3125, -0.375, 0.4375, 0.4375, 0.375},
			{0.375, -0.1875, -0.375, 0.4375, -0.0625, 0.375},
			{-0.375, 0.3125, -0.4375, 0.375, 0.4375, -0.375},
			{-0.375, -0.1875, -0.4375, 0.375, -0.0625, -0.375},
			{-0.4375, 0.3125, -0.375, -0.375, 0.4375, 0.375},
			{-0.4375, -0.1875, -0.375, -0.375, -0.0625, 0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = cgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_w", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.375, 0.3125, 0.375, 0.375, 0.4375, 0.4375},
			{-0.375, -0.1875, 0.375, 0.375, -0.0625, 0.4375},
			{0.375, 0.3125, -0.375, 0.4375, 0.4375, 0.375},
			{0.375, -0.1875, -0.375, 0.4375, -0.0625, 0.375},
			{-0.375, 0.3125, -0.4375, 0.375, 0.4375, -0.375},
			{-0.375, -0.1875, -0.4375, 0.375, -0.0625, -0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_s", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.375, 0.3125, 0.375, 0.375, 0.4375, 0.4375},
			{-0.375, -0.1875, 0.375, 0.375, -0.0625, 0.4375},
			{0.375, 0.3125, -0.375, 0.4375, 0.4375, 0.375},
			{0.375, -0.1875, -0.375, 0.4375, -0.0625, 0.375},
			{-0.4375, 0.3125, -0.375, -0.375, 0.4375, 0.375},
			{-0.4375, -0.1875, -0.375, -0.375, -0.0625, 0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_sw", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.375, 0.3125, 0.375, 0.375, 0.4375, 0.4375},
			{-0.375, -0.1875, 0.375, 0.375, -0.0625, 0.4375},
			{0.375, 0.3125, -0.375, 0.4375, 0.4375, 0.375},
			{0.375, -0.1875, -0.375, 0.4375, -0.0625, 0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_e", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.375, 0.3125, 0.375, 0.375, 0.4375, 0.4375},
			{-0.375, -0.1875, 0.375, 0.375, -0.0625, 0.4375},
			{-0.375, 0.3125, -0.4375, 0.375, 0.4375, -0.375},
			{-0.375, -0.1875, -0.4375, 0.375, -0.0625, -0.375},
			{-0.4375, 0.3125, -0.375, -0.375, 0.4375, 0.375},
			{-0.4375, -0.1875, -0.375, -0.375, -0.0625, 0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_ew", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.375, 0.3125, 0.375, 0.375, 0.4375, 0.4375},
			{-0.375, -0.1875, 0.375, 0.375, -0.0625, 0.4375},
			{-0.375, 0.3125, -0.4375, 0.375, 0.4375, -0.375},
			{-0.375, -0.1875, -0.4375, 0.375, -0.0625, -0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_es", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.375, 0.3125, 0.375, 0.375, 0.4375, 0.4375},
			{-0.375, -0.1875, 0.375, 0.375, -0.0625, 0.4375},
			{-0.4375, 0.3125, -0.375, -0.375, 0.4375, 0.375},
			{-0.4375, -0.1875, -0.375, -0.375, -0.0625, 0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_esw", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.375, 0.3125, 0.375, 0.375, 0.4375, 0.4375},
			{-0.375, -0.1875, 0.375, 0.375, -0.0625, 0.4375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_n", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{0.375, 0.3125, -0.375, 0.4375, 0.4375, 0.375},
			{0.375, -0.1875, -0.375, 0.4375, -0.0625, 0.375},
			{-0.375, 0.3125, -0.4375, 0.375, 0.4375, -0.375},
			{-0.375, -0.1875, -0.4375, 0.375, -0.0625, -0.375},
			{-0.4375, 0.3125, -0.375, -0.375, 0.4375, 0.375},
			{-0.4375, -0.1875, -0.375, -0.375, -0.0625, 0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_nw", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{0.375, 0.3125, -0.375, 0.4375, 0.4375, 0.375},
			{0.375, -0.1875, -0.375, 0.4375, -0.0625, 0.375},
			{-0.375, 0.3125, -0.4375, 0.375, 0.4375, -0.375},
			{-0.375, -0.1875, -0.4375, 0.375, -0.0625, -0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_ns", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{0.375, 0.3125, -0.375, 0.4375, 0.4375, 0.375},
			{0.375, -0.1875, -0.375, 0.4375, -0.0625, 0.375},
			{-0.4375, 0.3125, -0.375, -0.375, 0.4375, 0.375},
			{-0.4375, -0.1875, -0.375, -0.375, -0.0625, 0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_nsw", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{0.375, 0.3125, -0.375, 0.4375, 0.4375, 0.375},
			{0.375, -0.1875, -0.375, 0.4375, -0.0625, 0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_ne", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.375, 0.3125, -0.4375, 0.375, 0.4375, -0.375},
			{-0.375, -0.1875, -0.4375, 0.375, -0.0625, -0.375},
			{-0.4375, 0.3125, -0.375, -0.375, 0.4375, 0.375},
			{-0.4375, -0.1875, -0.375, -0.375, -0.0625, 0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_new", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.375, 0.3125, -0.4375, 0.375, 0.4375, -0.375},
			{-0.375, -0.1875, -0.4375, 0.375, -0.0625, -0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_nes", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.4375, 0.3125, -0.375, -0.375, 0.4375, 0.375},
			{-0.4375, -0.1875, -0.375, -0.375, -0.0625, 0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_node(":viaduct:"..item.."_bridge_nesw", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_craft({
	output = "viaduct:"..item.."_bridge 3",
	recipe = {
		{"group:stick", "", "group:stick"},
		{"group:stick", "", "group:stick"},
		{recipe, recipe, recipe},
	}
})

if(minetest.get_modpath("tools")) then
minetest.register_craft({
	output = "viaduct:"..item.."_bridge 3",
	recipe = {
		{"tools:stick", "", "tools:stick"},
		{"tools:stick", "", "tools:stick"},
		{recipe, recipe, recipe},
	}
})
end

minetest.register_abm({
	nodenames = {
		"viaduct:"..item.."_bridge",
		"viaduct:"..item.."_bridge_w",
		"viaduct:"..item.."_bridge_s",
		"viaduct:"..item.."_bridge_sw",
		"viaduct:"..item.."_bridge_e",
		"viaduct:"..item.."_bridge_ew",
		"viaduct:"..item.."_bridge_es",
		"viaduct:"..item.."_bridge_esw",
		"viaduct:"..item.."_bridge_n",
		"viaduct:"..item.."_bridge_nw",
		"viaduct:"..item.."_bridge_ns",
		"viaduct:"..item.."_bridge_nsw",
		"viaduct:"..item.."_bridge_ne",
		"viaduct:"..item.."_bridge_new",
		"viaduct:"..item.."_bridge_nes",
		"viaduct:"..item.."_bridge_nesw"
	},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		local north = {x = pos.x, y = pos.y, z = pos.z + 1}
		local east = {x = pos.x + 1, y = pos.y, z = pos.z}
		local south = {x = pos.x, y = pos.y, z = pos.z - 1}
		local west = {x = pos.x - 1, y = pos.y, z = pos.z}
		local northdown = {x = pos.x, y = pos.y - 1, z = pos.z + 1}
		local eastdown = {x = pos.x + 1, y = pos.y - 1, z = pos.z}
		local southdown = {x = pos.x, y = pos.y - 1, z = pos.z - 1}
		local westdown = {x = pos.x - 1, y = pos.y - 1, z = pos.z}
		local noden = minetest.get_node(north)
		local nodee = minetest.get_node(east)
		local nodes = minetest.get_node(south)
		local nodew = minetest.get_node(west)
		local namend = minetest.get_node(northdown)
		local nameed = minetest.get_node(eastdown)
		local namesd = minetest.get_node(southdown)
		local namewd = minetest.get_node(westdown)
		local namen = noden.name:split(':')[1]
		local namee = nodee.name:split(':')[1]
		local names = nodes.name:split(':')[1]
		local namew = nodew.name:split(':')[1]
		if namen == "viaduct" then n = true else n = false end
		if namee == "viaduct" then e = true else e = false end
		if names == "viaduct" then s = true else s = false end
		if namew == "viaduct" then w = true else w = false end
		if namend.name == "air" then nd = true else nd = false end
		if nameed.name == "air" then ed = true else ed = false end
		if namesd.name == "air" then sd = true else sd = false end
		if namewd.name == "air" then wd = true else wd = false end
		if n and e and s and w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_nesw"})
		elseif n and e and s and not w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_nes"})
		elseif n and e and not s and w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_new"})
		elseif n and e and not s and not w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ne"})
		elseif n and not e and s and w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_nsw"})
		elseif n and not e and s and not w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ns"})
		elseif n and not e and not s and w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_nw"})
		elseif n and not e and not s and not w then
			if sd then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_n"})
			else
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ns"})
			end
		elseif not n and e and s and w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_esw"})
		elseif not n and e and s and not w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_es"})
		elseif not n and e and not s and w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ew"})
		elseif not n and e and not s and not w then
			if wd then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_e"})
			else
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ew"})
			end
		elseif not n and not e and s and w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_sw"})
		elseif not n and not e and s and not w then
			if nd then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_s"})
			else
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ns"})
			end
		elseif not n and not e and not s and w then
			if ed then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_w"})
			else
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ew"})
			end
		else
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge"})
		end
	end,
})

end

function viaduct.register_node(name)
	local node_def = minetest.registered_nodes[name]
	if not node_def then
		minetest.log("warning", "[Viaduct] Skipping unknown node: ".. name)
		return
	end

	local node_name = name:split(':')[2]

	if not node_def.tiles then
		node_def.tiles = table.copy(node_def.tile_images)
		node_def.tile_images = nil
	end

	viaduct.register_custom(node_name, node_def.description, node_def.tiles, node_def.sound, "nil", "nil", name)
end

viaduct.register_node("default:wood")
viaduct.register_node("default:junglewood")
viaduct.register_node("default:pine_wood")
viaduct.register_node("default:acacia_wood")
viaduct.register_node("default:aspen_wood")
viaduct.register_node("default:planks")
viaduct.register_node("default:planks_oak")
viaduct.register_node("default:planks_birch")

if(minetest.get_modpath("deco")) then
viaduct.register_node("deco:oak_plank")
viaduct.register_node("deco:birch_plank")
viaduct.register_node("deco:cherry_plank")
viaduct.register_node("deco:evergreen_plank")
end

if(minetest.get_modpath("lottplants")) then
viaduct.register_node("lottplants:pinewood")
viaduct.register_node("lottplants:birchwood")
viaduct.register_node("lottplants:alderwood")
viaduct.register_node("lottplants:lebethronwood")
viaduct.register_node("lottplants:mallornwood")
end
