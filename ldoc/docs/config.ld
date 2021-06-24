project = "3D Armor"
title = "3D Armor"
description = "3d_armor mod for [Minetest](http://minetest.net/)"
format = "markdown"
not_luadoc = true
kind_names = {topic="Sections"}
readme = "../README.md"

add_language_extension("ld", "lua")

custom_see_handler("InvRef", function(name, section)
	return name, "http://minetest.gitlab.io/minetest/class-reference.html#invref"
end)

custom_see_handler("ObjectRef", function(name, section)
	return name, "http://minetest.gitlab.io/minetest/class-reference.html#objectref"
end)

custom_see_handler("ItemStack", function(name, section)
	return name, "http://minetest.gitlab.io/minetest/class-reference.html#itemstack"
end)
