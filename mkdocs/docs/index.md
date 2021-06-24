
`armor`
-------

Main object.

### Methods

* `equip(player, itemstack)`
* `unequip(player, armor_element)`
* `remove_all(player)`
* `get_player_skin(name)`
* `update_skin(name)`
* `add_preview(preview)`
* `get_preview(name)`
* `get_armor_formspec(name, liststring)`
* `get_element(item_name)`
* `serialize_inventory_list(list)`
* `deserialize_inventory_list(list_string)`
* `load_armor_inventory(player)`
* `save_armor_inventory(player)`
* `update_inventory(player)`: (DEPRECATED)
* `set_inventory_stack(player, i, stack)`
* `get_valid_player(player, msg)`
	* Checks for a player that can use armor.
	* `player`: ObjectRef Player object.
	* `msg`: string, Text appended to log output.
	* returns Player name (`string`) & armor inventory (`InvRef`).
* `drop_armor(pos, stack)`
	* Adds item to the world.
	* `pos`: Position where item will be added.
	* `stack`: ItemStack, Item to be added.
* `set_skin_mod(mod)`
	* Sets skin mod to be used. Useful for skin mod forks that do not use the same name.
	* `mod`: string, Skin mod being used.
