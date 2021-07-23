
--- Registered armors.
--
--  @topic armor


-- support for i18n
local S = armor.get_translator


--- Admin
--
--  @section admin

--- Admin helmet.
--
--  @armor 3d_armor:helmet_admin
--  @img 3d_armor_inv_helmet_admin.png
armor:register_armor("3d_armor:helmet_admin", {
	description = S("Admin Helmet"),
	inventory_image = "3d_armor_inv_helmet_admin.png",
	armor_groups = {fleshy=100},
	groups = {armor_head=1, armor_heal=100, armor_use=0, armor_water=1,
			not_in_creative_inventory=1},
	on_drop = function(itemstack, dropper, pos)
		return
	end,
})

--- Admin chestplate.
--
--  @armor 3d_armor:chestplate_admin
--  @img 3d_armor_inv_chestplate_admin.png
armor:register_armor("3d_armor:chestplate_admin", {
	description = S("Admin Chestplate"),
	inventory_image = "3d_armor_inv_chestplate_admin.png",
	armor_groups = {fleshy=100},
	groups = {armor_torso=1, armor_heal=100, armor_use=0,
			not_in_creative_inventory=1},
	on_drop = function(itemstack, dropper, pos)
		return
	end,
})

--- Admin leggings.
--
--  @armor 3d_armor:leggings_admin
--  @img 3d_armor_inv_leggings_admin.png
armor:register_armor("3d_armor:leggings_admin", {
	description = S("Admin Leggings"),
	inventory_image = "3d_armor_inv_leggings_admin.png",
	armor_groups = {fleshy=100},
	groups = {armor_legs=1, armor_heal=100, armor_use=0,
			not_in_creative_inventory=1},
	on_drop = function(itemstack, dropper, pos)
		return
	end,
})

--- Admin boots.
--
--  @armor 3d_armor:boots_admin
--  @img 3d_armor_inv_boots_admin.png
armor:register_armor("3d_armor:boots_admin", {
	description = S("Admin Boots"),
	inventory_image = "3d_armor_inv_boots_admin.png",
	armor_groups = {fleshy=100},
	groups = {armor_feet=1, armor_heal=100, armor_use=0,
			not_in_creative_inventory=1},
	on_drop = function(itemstack, dropper, pos)
		return
	end,
})

minetest.register_alias("adminboots", "3d_armor:boots_admin")
minetest.register_alias("adminhelmet", "3d_armor:helmet_admin")
minetest.register_alias("adminchestplate", "3d_armor:chestplate_admin")
minetest.register_alias("adminleggings", "3d_armor:leggings_admin")


--- Wood
--
--  Requires setting `armor_material_wood`.
--
--  @section wood

if armor.materials.wood then
	--- Wood helmet.
	--
	--  @armor 3d_armor:helmet_wood
	--  @img 3d_armor_inv_helmet_wood.png
	armor:register_armor("3d_armor:helmet_wood", {
		description = S("Wood Helmet"),
		inventory_image = "3d_armor_inv_helmet_wood.png",
		groups = {armor_head=1, armor_heal=0, armor_use=2000, flammable=1},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})
	--- Wood chestplate.
	--
	--  @armor 3d_armor:chestplate_wood
	--  @img 3d_armor_inv_chestplate_wood.png
	armor:register_armor("3d_armor:chestplate_wood", {
		description = S("Wood Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_wood.png",
		groups = {armor_torso=1, armor_heal=0, armor_use=2000, flammable=1},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})
	--- Wood leggings.
	--
	--  @armor 3d_armor:leggings_wood
	--  @img 3d_armor_inv_leggings_wood.png
	armor:register_armor("3d_armor:leggings_wood", {
		description = S("Wood Leggings"),
		inventory_image = "3d_armor_inv_leggings_wood.png",
		groups = {armor_legs=1, armor_heal=0, armor_use=2000, flammable=1},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})
	--- Wood boots.
	--
	--  @armor 3d_armor:boots_wood
	--  @img 3d_armor_inv_boots_wood.png
	armor:register_armor("3d_armor:boots_wood", {
		description = S("Wood Boots"),
		inventory_image = "3d_armor_inv_boots_wood.png",
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
		groups = {armor_feet=1, armor_heal=0, armor_use=2000, flammable=1},
	})
	local wood_armor_fuel = {
		helmet = 6,
		chestplate = 8,
		leggings = 7,
		boots = 5
	}
	for armor, burn in pairs(wood_armor_fuel) do
		minetest.register_craft({
			type = "fuel",
			recipe = "3d_armor:" .. armor .. "_wood",
			burntime = burn,
		})
	end
end


--- Cactus
--
--  Requires setting `armor_material_cactus`.
--
--  @section cactus

if armor.materials.cactus then
	--- Cactus helmet.
	--
	--  @armor 3d_armor:helmet_cactus
	--  @img 3d_armor_inv_helmet_cactus.png
	armor:register_armor("3d_armor:helmet_cactus", {
		description = S("Cactus Helmet"),
		inventory_image = "3d_armor_inv_helmet_cactus.png",
		groups = {armor_head=1, armor_heal=0, armor_use=1000},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	})
	--- Cactus chestplate.
	--
	--  @armor 3d_armor:chestplate_cactus
	--  @img 3d_armor_inv_chestplate_cactus.png
	armor:register_armor("3d_armor:chestplate_cactus", {
		description = S("Cactus Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_cactus.png",
		groups = {armor_torso=1, armor_heal=0, armor_use=1000},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	})
	--- Cactus leggings.
	--
	--  @armor 3d_armor:leggings_cactus
	--  @img 3d_armor_inv_leggings_cactus.png
	armor:register_armor("3d_armor:leggings_cactus", {
		description = S("Cactus Leggings"),
		inventory_image = "3d_armor_inv_leggings_cactus.png",
		groups = {armor_legs=1, armor_heal=0, armor_use=1000},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	})
	--- Cactus boots.
	--
	--  @armor 3d_armor:boots_cactus
	--  @img 3d_armor_inv_boots_cactus.png
	armor:register_armor("3d_armor:boots_cactus", {
		description = S("Cactus Boots"),
		inventory_image = "3d_armor_inv_boots_cactus.png",
		groups = {armor_feet=1, armor_heal=0, armor_use=1000},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	})
	local cactus_armor_fuel = {
		helmet = 14,
		chestplate = 16,
		leggings = 15,
		boots = 13
	}
	for armor, burn in pairs(cactus_armor_fuel) do
		minetest.register_craft({
			type = "fuel",
			recipe = "3d_armor:" .. armor .. "_cactus",
			burntime = burn,
		})
	end
end


--- Steel
--
--  Requires setting `armor_material_steel`.
--
--  @section steel

if armor.materials.steel then
	--- Steel helmet.
	--
	--  @armor 3d_armor:helmet_steel
	--  @img 3d_armor_inv_helmet_steel.png
	armor:register_armor("3d_armor:helmet_steel", {
		description = S("Steel Helmet"),
		inventory_image = "3d_armor_inv_helmet_steel.png",
		groups = {armor_head=1, armor_heal=0, armor_use=800,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	--- Steel chestplate.
	--
	--  @armor 3d_armor:chestplate_steel
	--  @img 3d_armor_inv_chestplate_steel.png
	armor:register_armor("3d_armor:chestplate_steel", {
		description = S("Steel Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_steel.png",
		groups = {armor_torso=1, armor_heal=0, armor_use=800,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	--- Steel leggings.
	--
	--  @armor 3d_armor:leggings_steel
	--  @img 3d_armor_inv_leggings_steel.png
	armor:register_armor("3d_armor:leggings_steel", {
		description = S("Steel Leggings"),
		inventory_image = "3d_armor_inv_leggings_steel.png",
		groups = {armor_legs=1, armor_heal=0, armor_use=800,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	--- Steel boots.
	--
	--  @armor 3d_armor:boots_steel
	--  @img 3d_armor_inv_boots_steel.png
	armor:register_armor("3d_armor:boots_steel", {
		description = S("Steel Boots"),
		inventory_image = "3d_armor_inv_boots_steel.png",
		groups = {armor_feet=1, armor_heal=0, armor_use=800,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
end


--- Bronze
--
--  Requires setting `armor_material_bronze`.
--
--  @section bronze

if armor.materials.bronze then
	--- Bronze helmet.
	--
	--  @armor 3d_armor:helmet_bronze
	--  @img 3d_armor_inv_helmet_bronze.png
	armor:register_armor("3d_armor:helmet_bronze", {
		description = S("Bronze Helmet"),
		inventory_image = "3d_armor_inv_helmet_bronze.png",
		groups = {armor_head=1, armor_heal=6, armor_use=400,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})
	--- Bronze chestplate.
	--
	--  @armor 3d_armor:chestplate_bronze
	--  @img 3d_armor_inv_chestplate_bronze.png
	armor:register_armor("3d_armor:chestplate_bronze", {
		description = S("Bronze Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_bronze.png",
		groups = {armor_torso=1, armor_heal=6, armor_use=400,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})
	--- Bronze leggings.
	--
	--  @armor 3d_armor:leggings_bronze
	--  @img 3d_armor_inv_leggings_bronze.png
	armor:register_armor("3d_armor:leggings_bronze", {
		description = S("Bronze Leggings"),
		inventory_image = "3d_armor_inv_leggings_bronze.png",
		groups = {armor_legs=1, armor_heal=6, armor_use=400,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})
	--- Bronze boots.
	--
	--  @armor 3d_armor:boots_bronze
	--  @img 3d_armor_inv_boots_bronze.png
	armor:register_armor("3d_armor:boots_bronze", {
		description = S("Bronze Boots"),
		inventory_image = "3d_armor_inv_boots_bronze.png",
		groups = {armor_feet=1, armor_heal=6, armor_use=400,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})
end


--- Diamond
--
--  Requires setting `armor_material_diamond`.
--
--  @section diamond

if armor.materials.diamond then
	--- Diamond helmet.
	--
	--  @armor 3d_armor:_diamond
	--  @img 3d_armor_inv_helmet_diamond.png
	armor:register_armor("3d_armor:helmet_diamond", {
		description = S("Diamond Helmet"),
		inventory_image = "3d_armor_inv_helmet_diamond.png",
		groups = {armor_head=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})
	--- Diamond chestplate.
	--
	--  @armor 3d_armor:chestplate_diamond
	--  @img 3d_armor_inv_chestplate_diamond.png
	armor:register_armor("3d_armor:chestplate_diamond", {
		description = S("Diamond Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_diamond.png",
		groups = {armor_torso=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})
	--- Diamond leggings.
	--
	--  @armor 3d_armor:leggings_diamond
	--  @img 3d_armor_inv_leggings_diamond.png
	armor:register_armor("3d_armor:leggings_diamond", {
		description = S("Diamond Leggings"),
		inventory_image = "3d_armor_inv_leggings_diamond.png",
		groups = {armor_legs=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})
	--- Diamond boots.
	--
	--  @armor 3d_armor:boots_diamond
	--  @img 3d_armor_inv_boots_diamond.png
	armor:register_armor("3d_armor:boots_diamond", {
		description = S("Diamond Boots"),
		inventory_image = "3d_armor_inv_boots_diamond.png",
		groups = {armor_feet=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})
end


--- Gold
--
--  Requires `armor_material_gold`.
--
--  @section gold

if armor.materials.gold then
	--- Gold helmet.
	--
	--  @armor 3d_armor:helmet_gold
	--  @img 3d_armor_inv_helmet_gold.png
	armor:register_armor("3d_armor:helmet_gold", {
		description = S("Gold Helmet"),
		inventory_image = "3d_armor_inv_helmet_gold.png",
		groups = {armor_head=1, armor_heal=6, armor_use=300,
			physics_speed=-0.02, physics_gravity=0.02},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
	--- Gold chestplate.
	--
	--  @armor 3d_armor:chestplate_gold
	--  @img 3d_armor_inv_chestplate_gold.png
	armor:register_armor("3d_armor:chestplate_gold", {
		description = S("Gold Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_gold.png",
		groups = {armor_torso=1, armor_heal=6, armor_use=300,
			physics_speed=-0.05, physics_gravity=0.05},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
	--- Gold leggings.
	--
	--  @armor 3d_armor:leggings_gold
	--  @img 3d_armor_inv_leggings_gold.png
	armor:register_armor("3d_armor:leggings_gold", {
		description = S("Gold Leggings"),
		inventory_image = "3d_armor_inv_leggings_gold.png",
		groups = {armor_legs=1, armor_heal=6, armor_use=300,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
	--- Gold boots.
	--
	--  @armor 3d_armor:boots_gold
	--  @img 3d_armor_inv_boots_gold.png
	armor:register_armor("3d_armor:boots_gold", {
		description = S("Gold Boots"),
		inventory_image = "3d_armor_inv_boots_gold.png",
		groups = {armor_feet=1, armor_heal=6, armor_use=300,
			physics_speed=-0.02, physics_gravity=0.02},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
end


--- Mithril
--
--  Requires `armor_material_mithril`.
--
--  @section mithril

if armor.materials.mithril then
	--- Mithril helmet.
	--
	--  @armor 3d_armor:helmet_mithril
	--  @img 3d_armor_inv_helmet_mithril.png
	armor:register_armor("3d_armor:helmet_mithril", {
		description = S("Mithril Helmet"),
		inventory_image = "3d_armor_inv_helmet_mithril.png",
		groups = {armor_head=1, armor_heal=12, armor_use=100},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	--- Mithril chestplate.
	--
	--  @armor 3d_armor:chestplate_mithril
	--  @img 3d_armor_inv_chestplate_mithril.png
	armor:register_armor("3d_armor:chestplate_mithril", {
		description = S("Mithril Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_mithril.png",
		groups = {armor_torso=1, armor_heal=12, armor_use=100},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	--- Mithril leggings.
	--
	--  @armor 3d_armor:leggings_mithril
	--  @img 3d_armor_inv_leggings_mithril.png
	armor:register_armor("3d_armor:leggings_mithril", {
		description = S("Mithril Leggings"),
		inventory_image = "3d_armor_inv_leggings_mithril.png",
		groups = {armor_legs=1, armor_heal=12, armor_use=100},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	--- Mithril boots.
	--
	--  @armor 3d_armor:boots_mithril
	--  @img 3d_armor_inv_boots_mithril.png
	armor:register_armor("3d_armor:boots_mithril", {
		description = S("Mithril Boots"),
		inventory_image = "3d_armor_inv_boots_mithril.png",
		groups = {armor_feet=1, armor_heal=12, armor_use=100},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
end


--- Crystal
--
--  Requires `armor_material_crystal`.
--
--  @section crystal

if armor.materials.crystal then
	--- Crystal helmet.
	--
	--  @armor 3d_armor:helmet_crystal
	--  @img 3d_armor_inv_helmet_crystal.png
	armor:register_armor("3d_armor:helmet_crystal", {
		description = S("Crystal Helmet"),
		inventory_image = "3d_armor_inv_helmet_crystal.png",
		groups = {armor_head=1, armor_heal=12, armor_use=100, armor_fire=1},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	--- Crystal chestplate.
	--
	--  @armor 3d_armor:_crystal
	--  @img 3d_armor_inv_chestplate_crystal.png
	armor:register_armor("3d_armor:chestplate_crystal", {
		description = S("Crystal Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_crystal.png",
		groups = {armor_torso=1, armor_heal=12, armor_use=100, armor_fire=1},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	--- Crystal leggings.
	--
	--  @armor 3d_armor:leggings_crystal
	--  @img 3d_armor_inv_leggings_crystal.png
	armor:register_armor("3d_armor:leggings_crystal", {
		description = S("Crystal Leggings"),
		inventory_image = "3d_armor_inv_leggings_crystal.png",
		groups = {armor_legs=1, armor_heal=12, armor_use=100, armor_fire=1},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	--- Crystal boots.
	--
	--  @armor 3d_armor:boots_crystal
	--  @img 3d_armor_inv_boots_crystal.png
	armor:register_armor("3d_armor:boots_crystal", {
		description = S("Crystal Boots"),
		inventory_image = "3d_armor_inv_boots_crystal.png",
		groups = {armor_feet=1, armor_heal=12, armor_use=100, physics_speed=1,
				physics_jump=0.5, armor_fire=1},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
end

for k, v in pairs(armor.materials) do
	minetest.register_craft({
		output = "3d_armor:helmet_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "3d_armor:chestplate_"..k,
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:leggings_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:boots_"..k,
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
end
