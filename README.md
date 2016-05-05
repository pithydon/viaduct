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
viaduct.register_custom("node_name", "description", {"tiles"}, sounds, {groups}, {groups, not_in_creative_inventory=1}, "recipe:node")
```
"node_name" and "description" will have the word bridge added to the end.

[pithydon]: <https://github.com/pithydon>
