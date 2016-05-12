viaduct = {}

function viaduct.register_wood_bridge(name, def)

	local node_def = minetest.registered_nodes[name]
	if not node_def then
		minetest.log("warning", "[Viaduct] Skipping unknown node: ".. name)
		return
	end

	local item = name:split(':')[2]

	if not def.description then
		desc = node_def.description.." Bridge"
	else
		desc = def.description
	end

	if not node_def.tiles then
		node_def.tiles = table.copy(node_def.tile_images)
		node_def.tile_images = nil
	end

	if not def.tiles then
		tile = node_def.tiles
	else
		tile = def.tiles
	end

	if not def.groups then
		group = table.copy(node_def.groups)
		group.wood = 0
		group.planks = 0
	else
		group = def.groups
	end

	if not def.sounds then
		sound = node_def.sounds
	else
		sound = def.sounds
	ene

	local tile_collection
	if type(tile) == "string" then
		tile_collection[1] = tile
	else
		tile_collection = table.copy(tile)
	end

	nocgroup = table.copy(group)
	nocgroup.not_in_creative_inventory = 1

	if not def.stick then
		def.stick = "group:stick"
	end

minetest.register_node(":viaduct:"..item.."_bridge", {
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
	description = desc,
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
		{def.stick, "", def.stick},
		{def.stick, "", def.stick},
		{name, name, name},
	}
})

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

function viaduct.register_rope_bridge(name, def)

	local node_def = minetest.registered_nodes[name]
	if not node_def then
		minetest.log("warning", "[Viaduct] Skipping unknown node: ".. name)
		return
	end

	local item = name:split(':')[2]

	if not def.description then
		desc = node_def.description.." Bridge"
	else
		desc = def.description
	end

	if not node_def.tiles then
		node_def.tiles = table.copy(node_def.tile_images)
		node_def.tile_images = nil
	end

	if not def.tiles then
		tile = node_def.tiles
	else
		tile = def.tiles
	end

	if not def.groups then
		group = table.copy(node_def.groups)
	else
		group = def.groups
	end

	if not def.sounds then
		sound = node_def.sounds
	else
		sound = def.sounds
	ene

	local tile_collection
	if type(tile) == "string" then
		tile_collection[1] = tile
	else
		tile_collection = table.copy(tile)
	end

nocgroup = table.copy(group)
nocgroup.not_in_creative_inventory = 1

minetest.register_node(":viaduct:"..item.."_bridge_rope", {
	description = desc,
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
	description = desc,
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
		{name, "", name},
		{"", "", ""},
		{name, name, name},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = name.." 5",
	recipe = {"viaduct:"..item.."_bridge_rope"},
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

viaduct.register_wood_bridge("default:wood", {description="Wooden Bridge"})
viaduct.register_wood_bridge("default:junglewood", {description="Junglewood Bridge"})
viaduct.register_wood_bridge("default:pine_wood", {description="Pine Bridge"})
viaduct.register_wood_bridge("default:acacia_wood", {description="Acacia Bridge"})
viaduct.register_wood_bridge("default:aspen_wood", {description="Aspen Bridge"})
viaduct.register_wood_bridge("default:planks", {})
viaduct.register_wood_bridge("default:planks_oak", {})
viaduct.register_wood_bridge("default:planks_birch", {})
viaduct.register_rope_bridge("default:rope", {})

if(minetest.get_modpath("deco")) then
viaduct.register_wood_bridge("deco:oak_plank", {stick="tools:stick"})
viaduct.register_wood_bridge("deco:birch_plank", {stick="tools:stick"})
viaduct.register_wood_bridge("deco:cherry_plank", {stick="tools:stick"})
viaduct.register_wood_bridge("deco:evergreen_plank", {stick="tools:stick"})
end

if(minetest.get_modpath("hemp")) then
viaduct.register_rope_bridge("hemp:hemp_rope", {})
end

if(minetest.get_modpath("lottblocks")) then
viaduct.register_rope_bridge("lottblocks:elven_rope", {tiles={"viaduct_elven_rope.png"}})
end

if(minetest.get_modpath("lottplants")) then
viaduct.register_wood_bridge("lottplants:pinewood", {})
viaduct.register_wood_bridge("lottplants:birchwood", {})
viaduct.register_wood_bridge("lottplants:alderwood", {})
viaduct.register_wood_bridge("lottplants:lebethronwood", {})
viaduct.register_wood_bridge("lottplants:mallornwood", {})
end

if(minetest.get_modpath("moreblocks")) then
viaduct.register_rope_bridge("moreblocks:rope", {tiles={"viaduct_rope.png"}})
end

-- OLD API

function viaduct.register_node(name)
	viaduct.register_wood_bridge(name, {})
end

function viaduct.register_custom(item, name, tile, sound, group, recipe)
	local legdef = {
		description = name.." Bridge",
		tiles = tile,
		sounds = sound,
		groups = group,
	}
	viaduct.register_wood_bridge(recipe, legdef)
end

function viaduct.register_node_rope(name)
	viaduct.register_rope_bridge(name, {})
end

function viaduct.register_custom_rope(item, name, tile, sound, group, recipe)
	local legdef = {
		description = name.." Bridge",
		tiles = tile,
		sounds = sound,
		groups = group,
	}
	viaduct.register_rope_bridge(recipe, legdef)
end
