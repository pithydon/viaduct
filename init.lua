viaduct = {}

function viaduct.register_custom(item, name, tile, sound, group, recipe)

local tile_collection
if type(tile) == "string" then
	tile_collection[1] = tile
else
	tile_collection = table.copy(tile)
end

nocgroup = table.copy(group)
nocgroup.not_in_creative_inventory = 1

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
	groups = group,
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

minetest.register_node(":viaduct:"..item.."_bridge_un", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0},
			{-0.5, 0, 0, 0.5, 0.0625, 0.5},
			{-0.5, 0.0625, 0.375, -0.375, 1, 0.5},
			{0.375, 0.0625, 0.375, 0.5, 1, 0.5},
			{-0.5, 0.0625, 0, -0.375, 1, 0.125},
			{0.375, 0.0625, 0, 0.5, 1, 0.125},
			{-0.5, -0.4375, -0.125, -0.375, 0.5, 0},
			{0.375, -0.4375, -0.125, 0.5, 0.5, 0},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.4375, 0.8125, 0.125, -0.375, 0.9375, 0.375},
			{-0.4375, 0.3125, 0.125, -0.375, 0.4375, 0.375},
			{0.375, 0.8125, 0.125, 0.4375, 0.9375, 0.375},
			{0.375, 0.3125, 0.125, 0.4375, 0.4375, 0.375},
			{-0.4375, 0.3125, -0.375, -0.375, 0.4375, -0.125},
			{-0.4375, -0.1875, -0.375, -0.375, -0.0625, -0.125},
			{0.375, 0.3125, -0.375, 0.4375, 0.4375, -0.125},
			{0.375, -0.1875, -0.375, 0.4375, -0.0625, -0.125},
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

minetest.register_node(":viaduct:"..item.."_bridge_ue", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0, -0.4375, 0.5},
			{0, 0, -0.5, 0.5, 0.0625, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{-0.125, -0.4375, 0.375, 0, 0.5, 0.5},
			{-0.5, -0.4375, -0.5, -0.375, 0.5, -0.375},
			{-0.125, -0.4375, -0.5, 0, 0.5, -0.375},
			{0, 0.0625, 0.375, 0.125, 1, 0.5},
			{0.375, 0.0625, 0.375, 0.5, 1, 0.5},
			{0, 0.0625, -0.5, 0.125, 1, -0.375},
			{0.375, 0.0625, -0.5, 0.5, 1, -0.375},
			{-0.375, 0.3125, 0.375, -0.125, 0.4375, 0.4375},
			{-0.375, -0.1875, 0.375, -0.125, -0.0625, 0.4375},
			{-0.375, 0.3125, -0.4375, -0.125, 0.4375, -0.375},
			{-0.375, -0.1875, -0.4375, -0.125, -0.0625, -0.375},
			{0.125, 0.8125, 0.375, 0.375, 0.9375, 0.4375},
			{0.125, 0.3125, 0.375, 0.375, 0.4375, 0.4375},
			{0.125, 0.8125, -0.4375, 0.375, 0.9375, -0.375},
			{0.125, 0.3125, -0.4375, 0.375, 0.4375, -0.375},
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

minetest.register_node(":viaduct:"..item.."_bridge_us", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.0625, 0},
			{-0.5, -0.5, 0, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.375, -0.375, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, 0, -0.375, 0.5, 0.125},
			{0.375, -0.4375, 0, 0.5, 0.5, 0.125},
			{-0.5, 0.0625, -0.125, -0.375, 1, 0},
			{0.375, 0.0625, -0.125, 0.5, 1, 0},
			{-0.5, 0.0625, -0.5, -0.375, 1, -0.375},
			{0.375, 0.0625, -0.5, 0.5, 1, -0.375},
			{-0.4375, 0.3125, 0.125, -0.375, 0.4375, 0.375},
			{-0.4375, -0.1875, 0.125, -0.375, -0.0625, 0.375},
			{0.375, 0.3125, 0.125, 0.4375, 0.4375, 0.375},
			{0.375, -0.1875, 0.125, 0.4375, -0.0625, 0.375},
			{-0.4375, 0.8125, -0.375, -0.375, 0.9375, -0.125},
			{-0.4375, 0.3125, -0.375, -0.375, 0.4375, -0.125},
			{0.375, 0.8125, -0.375, 0.4375, 0.9375, -0.125},
			{0.375, 0.3125, -0.375, 0.4375, 0.4375, -0.125},
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

minetest.register_node(":viaduct:"..item.."_bridge_uw", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0, 0.0625, 0.5},
			{0, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, 0.0625, 0.375, -0.375, 1, 0.5},
			{-0.125, 0.0625, 0.375, 0, 1, 0.5},
			{-0.5, 0.0625, -0.5, -0.375, 1, -0.375},
			{-0.125, 0.0625, -0.5, 0, 1, -0.375},
			{0, -0.4375, 0.375, 0.125, 0.5, 0.5},
			{0.375, -0.4375, 0.375, 0.5, 0.5, 0.5},
			{0, -0.4375, -0.5, 0.125, 0.5, -0.375},
			{0.375, -0.4375, -0.5, 0.5, 0.5, -0.375},
			{-0.375, 0.8125, 0.375, -0.125, 0.9375, 0.4375},
			{-0.375, 0.3125, 0.375, -0.125, 0.4375, 0.4375},
			{-0.375, 0.8125, -0.4375, -0.125, 0.9375, -0.375},
			{-0.375, 0.3125, -0.4375, -0.125, 0.4375, -0.375},
			{0.125, 0.3125, 0.375, 0.375, 0.4375, 0.4375},
			{0.125, -0.1875, 0.375, 0.375, -0.0625, 0.4375},
			{0.125, 0.3125, -0.4375, 0.375, 0.4375, -0.375},
			{0.125, -0.1875, -0.4375, 0.375, -0.0625, -0.375},
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
		"viaduct:"..item.."_bridge_nesw",
		"viaduct:"..item.."_bridge_un",
		"viaduct:"..item.."_bridge_ue",
		"viaduct:"..item.."_bridge_us",
		"viaduct:"..item.."_bridge_uw"
	},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		local north = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
		local east = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
		local south = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
		local west = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
		local northup = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
		local eastup = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
		local southup = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
		local westup = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
		local above = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z})
		local northdown = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z + 1})
		local eastdown = minetest.get_node({x = pos.x + 1, y = pos.y - 1, z = pos.z})
		local southdown = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z - 1})
		local westdown = minetest.get_node({x = pos.x - 1, y = pos.y - 1, z = pos.z})
		local modnorth = north.name:split(':')[1]
		local modeast = east.name:split(':')[1]
		local modsouth = south.name:split(':')[1]
		local modwest = west.name:split(':')[1]
		local modnorthup = northup.name:split(':')[1]
		local modeastup = eastup.name:split(':')[1]
		local modsouthup = southup.name:split(':')[1]
		local modwestup = westup.name:split(':')[1]
		if above.name == "air" then up = true else up = false end
		if northdown.name:split('_bridge_')[2] == "us" then bridgeus = true else bridgeus = false end
		if eastdown.name:split('_bridge_')[2] == "uw" then bridgeuw = true else bridgeuw = false end
		if southdown.name:split('_bridge_')[2] == "un" then bridgeun = true else bridgeun = false end
		if westdown.name:split('_bridge_')[2] == "ue" then bridgeue = true else bridgeue = false end
		if modnorth == "viaduct" or bridgeus then n = true else n = false end
		if modeast == "viaduct" or bridgeuw then e = true else e = false end
		if modsouth == "viaduct" or bridgeun then s = true else s = false end
		if modwest == "viaduct" or bridgeue then w = true else w = false end
		if modnorthup == "viaduct" and up then nu = true else nu = false end
		if modeastup == "viaduct" and up then eu = true else eu = false end
		if modsouthup == "viaduct" and up then su = true else su = false end
		if modwestup == "viaduct" and up then wu = true else wu = false end
		if northdown.name == "air" then nd = true else nd = false end
		if eastdown.name == "air" then ed = true else ed = false end
		if southdown.name == "air" then sd = true else sd = false end
		if westdown.name == "air" then wd = true else wd = false end
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
			if su then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_us"})
			elseif sd then
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
			if wu then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_uw"})
			elseif wd then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_e"})
			else
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ew"})
			end
		elseif not n and not e and s and w then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_sw"})
		elseif not n and not e and s and not w then
			if nu then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_un"})
			elseif nd then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_s"})
			else
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ns"})
			end
		elseif not n and not e and not s and w then
			if eu then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ue"})
			elseif ed then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_w"})
			else
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ew"})
			end
		else
			if nu then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_un"})
			elseif eu then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_ue"})
			elseif su then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_us"})
			elseif wu then
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_uw"})
			else
				minetest.set_node(pos, {name = "viaduct:"..item.."_bridge"})
			end
		end
	end,
})

end

function viaduct.register_custom_rope(item, name, tile, sound, group, recipe)

local tile_collection
if type(tile) == "string" then
	tile_collection[1] = tile
else
	tile_collection = table.copy(tile)
end

nocgroup = table.copy(group)
nocgroup.not_in_creative_inventory = 1

minetest.register_node(":viaduct:"..item.."_bridge_rope", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.5, -0.375, 0.5, 0.5},
			{0.375, 0.375, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, -0.375, 0.5},
			{0.375, -0.5, -0.5, 0.5, -0.375, 0.5},
			{-0.5, -0.375, -0.0625, -0.375, 0.375, 0.0625},
			{0.375, -0.375, -0.0625, 0.5, 0.375, 0.0625},
			{-0.1875, -0.5, -0.5, -0.0625, -0.375, 0.5},
			{0.0625, -0.5, -0.5, 0.1875, -0.375, 0.5},
			{-0.375, -0.5, 0.25, 0.375, -0.375, 0.375},
			{-0.375, -0.5, -0.0625, 0.375, -0.375, 0.0625},
			{-0.375, -0.5, -0.375, 0.375, -0.375, -0.25},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge_rope",
	sounds = sound,
	groups = group,
})

minetest.register_node(":viaduct:"..item.."_bridge_rope_r", {
	description = name.." Bridge",
	tiles = tile_collection,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, 0.375, -0.5, 0.5, 0.5, -0.375},
			{-0.5, -0.5, 0.375, 0.5, -0.375, 0.5},
			{-0.5, -0.5, -0.5, 0.5, -0.375, -0.375},
			{-0.0625, -0.375, 0.375, 0.0625, 0.375, 0.5},
			{-0.0625, -0.375, -0.5, 0.0625, 0.375, -0.375},
			{-0.5, -0.5, 0.1875, 0.5, -0.375, 0.0625},
			{-0.5, -0.5, -0.0625, 0.5, -0.375, -0.1875},
			{0.25, -0.5, -0.375, 0.375, -0.375, 0.375},
			{-0.0625, -0.5, -0.375, 0.0625, -0.375, 0.375},
			{-0.375, -0.5, -0.375, -0.25, -0.375, 0.375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "viaduct:"..item.."_bridge_rope",
	sounds = sound,
	groups = nocgroup,
})

minetest.register_craft({
	output = "viaduct:"..item.."_bridge_rope",
	recipe = {
		{recipe, "", recipe},
		{"", "", ""},
		{recipe, recipe, recipe},
	}
})

minetest.register_abm({
	nodenames = {
		"viaduct:"..item.."_bridge_rope",
		"viaduct:"..item.."_bridge_rope_r"

	},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		local north = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
		local south = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
		local modnorth = north.name:split(':')[1]
		local modsouth = south.name:split(':')[1]
		if modnorth == "viaduct" or modsouth == "viaduct" then
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_rope"})
		else
			minetest.set_node(pos, {name = "viaduct:"..item.."_bridge_rope_r"})
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

	group = table.copy(node_def.groups)
	group.wood = 0
	group.planks = 0

	viaduct.register_custom(node_name, node_def.description, node_def.tiles, node_def.sound, group, name)
end

function viaduct.register_node_rope(name)
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

	viaduct.register_custom_rope(node_name, node_def.description, node_def.tiles, node_def.sound, node_def.groups, name)
end

viaduct.register_node("default:wood")
viaduct.register_node("default:junglewood")
viaduct.register_node("default:pine_wood")
viaduct.register_node("default:acacia_wood")
viaduct.register_node("default:aspen_wood")
viaduct.register_node("default:planks")
viaduct.register_node("default:planks_oak")
viaduct.register_node("default:planks_birch")
viaduct.register_node_rope("default:rope")

if(minetest.get_modpath("deco")) then
viaduct.register_node("deco:oak_plank")
viaduct.register_node("deco:birch_plank")
viaduct.register_node("deco:cherry_plank")
viaduct.register_node("deco:evergreen_plank")
end

if(minetest.get_modpath("lottblocks")) then
viaduct.register_custom_rope("elven_rope", "Elven Rope", {"viaduct_elven_rope.png"}, nil, {oddly_breakable_by_hand = 3}, "lottblocks:elven_rope")
end

if(minetest.get_modpath("lottplants")) then
viaduct.register_node("lottplants:pinewood")
viaduct.register_node("lottplants:birchwood")
viaduct.register_node("lottplants:alderwood")
viaduct.register_node("lottplants:lebethronwood")
viaduct.register_node("lottplants:mallornwood")
end

if(minetest.get_modpath("moreblocks")) then
viaduct.register_custom_rope("rope", "Rope", {"viaduct_rope.png"}, default.node_sound_leaves_defaults(), {snappy = 3, flammable = 2}, "moreblocks:rope")
end
