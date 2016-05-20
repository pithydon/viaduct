# viaduct by [pithydon]

Connected node bridges for Minetest.

code license: unlicense

texture license: WTFPL

see LICENSE.txt

mod api:

```lua
viaduct.register_wood_bridge("recipe:node", {item definition})

viaduct.register_rope_bridge("recipe:node", {item definition})
```

examples

```lua
viaduct.register_wood_bridge("default:wood", {
	description = "Wooden Bridge",
	tiles = {"default_wood.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	stick = "groups:stick",
})
```
stick is used to define what to use in the craft recipe for rails.

Any part of the item definition can also be blank.

```lua
viaduct.register_wood_bridge("default:wood", {})
```

Older api is supported but not documented.

[pithydon]: <https://github.com/pithydon>
