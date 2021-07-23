-- Place this file in mod "docs" directory

project = "3d_armor"
title = "3D Armor"
format = "markdown"
not_luadoc = true
boilerplate = false
wrap = false

file = {
	"3d_armor/api.lua",
}


new_type("setting", "Settings")
new_type("chatcmd", "Chat Commands", false, "chatparam")
new_type("craftitem", "Item")
new_type("node", "Nodes")
new_type("recipe", "Craft Recipes")
new_type("feature", "Features")

custom_tags = {
	-- settings
	{
		"settype",
		title = "Type",
	},
	{
		"default",
		title = "Default Value",
	},
	-- chat commands
	{
		"chatparam",
		title = "Parameters",
		hidden = true,
	},
	{
		"option",
		title = "Options",
	},
	-- craft items
	{
		"image",
		title = "Image",
		format = function(value)
			return "<img src=\"../../textures/" .. value .. "\" style=\"width:32px; height:32px;\" />"
		end,
	},
	{
		"use",
		title = "Use <i>(left-click)</i>",
	},
	{
		"place",
		title = "Place <i>(right-click)</i>",
	},
	-- craft recipes
	{
		"rtype",
		title = "Recipe type",
	},
	{
		"output",
		title = "Output",
	},
	{
		"input",
		title = "Input",
	},
	-- tables
	{
		"dfield",
		title = "Definition Fields",
	},
	-- misc.
	{
		"note",
		title = "Notes",
	},
}


local function chatcmd_handler(item)
	local output = item.name
	for _, p in ipairs(item.params) do
		if item.modifiers.param[p].opt then
			output = output .. " [" .. p .. "]"
		else
			output = output .. " &lt;" .. p .. "&gt;"
		end
	end

	return output
end

function custom_display_name_handler(item, default_handler)
	if item.type == "chatcmd" then
		return chatcmd_handler(item)
	end

	return default_handler(item)
end


custom_see_handler("ObjectRef", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/class-reference/#objectref"
end)

custom_see_handler("ItemStack", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/class-reference/#itemstack"
end)

custom_see_handler("ItemStackMetaRef", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/class-reference/#itemstackmetaref"
end)

custom_see_handler("MetaDataRef", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/class-reference/#metadataref"
end)

custom_see_handler("InvRef", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/class-reference/#invref"
end)

custom_see_handler("Node", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/nodes/"
end)

custom_see_handler("NodeMetaRef", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/class-reference/#nodemetaref"
end)

custom_see_handler("PlayerMetaRef", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/class-reference/#playermetaref"
end)

custom_see_handler("StorageRef", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/class-reference/#storageref"
end)

custom_see_handler("ItemDef", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/definition-tables/#item-definition"
end)

custom_see_handler("vector", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/representations-of-simple-things/#positionvector"
end)

custom_see_handler("ToolDef", function(name, section)
	return name, "https://minetest.gitlab.io/minetest/tools/#tools-definition"
end)
