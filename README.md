# viaduct by [pithydon]

Connected node bridges for Minetest.

Licensed under the unlicense, see LICENSE.txt

mod api:

To make a new bridge type use
```lua
viaduct.register_node("mod:name")
```
Replace "mod:name" with the node name you wish to make the bridge out of. eg "default:wood"

To make a new bridge type with custom properties use
```lua
viaduct.register_custom("node_name", "description", {"tiles"}, sounds, {groups}, "recipe:node")
```
"node_name" and "description" will have the word bridge added to the end.

For rope type bridge use
```lua
viaduct.register_node_rope("mod:name")
```
or
```lua
viaduct.register_custom_rope("node_name", "description", {"tiles"}, sounds, {groups}, "recipe:node")
```

[pithydon]: <https://github.com/pithydon>
