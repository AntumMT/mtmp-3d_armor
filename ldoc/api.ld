
--- 3d_armor API
--
--  @topic API


---
--
--  @function armor.equip
--  @tparam ObjectRef player
--  @param ItemStack itemstack

---
--
--  @function armor.unequip
--  @tparam ObjectRef player
--  @param armor_element

---
--
--  @function armor.remove_all
--  @tparam ObjectRef player

---
--
--  @function armor.get_player_skin
--  @param name

---
--
--  @function armor.update_skin
--  @param name

---
--
--  @function armor.add_preview
--  @param preview

---
--
--  @function armor.get_preview
--  @param name

---
--
--  @function armor.get_armor_formspec
--  @param name
--  @param listring

---
--
--  @function armor.get_element
--  @param item_name

---
--
--  @function armor.serialize_inventory_list
--  @param list

---
--
--  @function armor.deserialize_inventory_list
--  @param list_string

---
--
--  @function armor.load_armor_inventory
--  @tparam ObjectRef player

---
--
--  @function armor.save_armor_inventory
--  @tparam ObjectRef player

---
--
--  DEPRECATED
--
--  @function armor.update_inventory
--  @tparam ObjectRef player

---
--
--  @function armor.set_inventory_stack
--  @tparam ObjectRef player
--  @param i
--  @tparam ItemStack stack

--- Checks for a player that can use armor.
--
--  @function armor.get_valid_player
--  @tparam ObjectRef player
--  @param msg
--  @return Player name (`string`) & armor inventory (`InvRef`).

--- Adds item to the world.
--
--  @function armor.drop_armor
--  @param pos
--  @param stack

--- Sets skin mod to be used.
--
--  Useful for skin mod forks that do not use the same name.
--
--  @function armor.set_skin_mod
--  @tparam string mod Skin mod being used.
