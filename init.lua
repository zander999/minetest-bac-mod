-- GENERATED CODE
-- Node Box Editor, version 0.9.0
-- Namespace: test

minetest.register_node("bac:bac_box", {
	description = "Bac_box",
	tiles = {
		"compass_0.png",
		"technic_checkmark_icon.png",
		"diplazer_grav.png",
		"front.jpg",
		"heart.png",
		"gold.png"
	},
  light_source = 10,
	groups = {cracky=3},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox6
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}, -- NodeBox7
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5}, -- NodeBox8
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5}, -- NodeBox9
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.4375}, -- NodeBox10
		}
	}
});
minetest.register_craft({
output = "bac:bac_box",
recipe = {
{"default:mese_crystal", "default:diamond", "default:mese_crystal"},
{"default:stone", "default:chest", "default:stone"},
{"default:stone", "default:stone", "default:stone"},
}
})


minetest.register_tool("bac:bac_pick", {
    description = "Bac_Pick",
    inventory_image = "bac_pick.png",
		after_use = function(itemstack, user, pointed_thing)
		 itemstack:add_wear(2000)
	 end,
    tool_capabilities = {
        max_drop_level=9,
        groupcaps= {
            cracky={times={[1]=1.00, [2]=1.50, [3]=2.00}, uses=99, maxlevel=9}
        }
    }
});
minetest.register_craft({
output = "bac:bac_pick",
recipe = {
{"bac:bac_box", "bac:bac_box", "bac:bac_box"},
{"", "default:stick", ""},
{"", "default:stick", ""},
}
})


minetest.register_tool("bac:bac_pick_upgraded", {
    description = "Bac_Pick_upgraded",
    inventory_image = "bac_pick_upgraded.png",
		after_use = function(itemstack, user, pointed_thing)
		 itemstack:add_wear(200)
	 end,
    tool_capabilities = {
        max_drop_level=99,
        groupcaps= {
            cracky={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99}
        }
    }
});
minetest.register_craft({
output = "bac:bac_pick_upgraded",
recipe = {
{"", "default:mese_crystal", ""},
{"", "bac:bac_pick", ""},
{"", "", ""},
}
})


minetest.register_tool("bac:bac_final", {
	description = "Bac final",
	after_use = function()
		minetest.sound_play("photon_gun_shot")
	end,
	inventory_image = "bac_final.png",
	tool_capabilities = {
		max_drop_level=99,
		groupcaps={
			cracky={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
			crumbly={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
			snappy={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
			choppy={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
		},
		damage_groups = {fleshy=30}
	},
})
minetest.register_craft({
output = "bac:bac_final",
recipe = {
{"", "default:mese_crystal", ""},
{"", "bac:bac_pick_upgraded", ""},
{"", "", ""},
}
})


minetest.register_craftitem("bac:edible", {
	description = "Bac Edible",
	after_use = function()
      minetest.sound_play("crunch")
	end,
	inventory_image = "bac_edible.png",
	on_use = minetest.item_eat(90),
})
minetest.register_craft({
	type = "cooking",
	output = "bac:edible",
	recipe = "bac:bac_final",
})


minetest.register_tool("bac:bac_laser", {
	description = "Bac laser",
	after_use = function()
		minetest.sound_play("laser")
	end,
	inventory_image = "bac_laser.png",
	tool_capabilities = {
		max_drop_level=99,
		groupcaps={
			cracky={times={[1]=0.50, [2]=0.50, [3]=0.50}, uses=99, maxlevel=99},
			crumbly={times={[1]=0.50, [2]=0.50, [3]=0.50}, uses=99, maxlevel=99},
			snappy={times={[1]=0.50, [2]=0.50, [3]=0.50}, uses=99, maxlevel=99},
			choppy={times={[1]=0.50, [2]=0.50, [3]=0.50}, uses=99, maxlevel=99},
		},
		damage_groups = {fleshy=99}
	},
})
minetest.register_craft({
output = "bac:bac_laser",
recipe = {
{"", "default:mese_crystal", ""},
{"", "bac:edible", ""},
{"", "default:diamond", ""},
}
})