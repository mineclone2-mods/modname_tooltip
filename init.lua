minetest.log("action", "[modname_tooltip] loading...")

modname_tooltip = {
	mods_titles = {},
}

for _,n in ipairs(minetest.get_modnames()) do
	local modpath = minetest.get_modpath(n)
	if modpath:match("games/MineClone") then --Support MineClone5
		modname_tooltip.mods_titles[n] = "MineClone2"
	else
		local s = Settings(modpath.."/mod.conf")
		modname_tooltip.mods_titles[n] = s:get("title") or n
	end
end

local function get_modname(itemstring)
	return string.match(itemstring, "(.-):.*")
end

function modname_tooltip.set_mod_title(modname, title)
	modname_tooltip.mods_titles[modname] = title
end

function modname_tooltip.get_mod_title(modname)
	return modname_tooltip.mods_titles[modname]
end

minetest.get_modnames()

tt.register_snippet(function(itemstring)
	return modname_tooltip.get_mod_title(get_modname(itemstring)), mcl_colors.BLUE
end)

minetest.log("action", "[modname_tooltip] loaded succesfully")