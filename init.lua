modname_tooltip = {
	mods_titles = {},
}

local function is_mcl(modname)
	return minetest.get_modpath(modname):match("games/MineClone") --Support MineClone5
end

local function get_modname(itemstring)
	return string.match(itemstring, "(.-):.*")
end

function modname_tooltip.set_mod_title(modname, title)
	modname_tooltip.mods_titles[modname] = title
end

function modname_tooltip.get_mod_title(modname)
	if is_mcl(modname) then
		return "MineClone2"
	else
		return modname_tooltip.mods_titles[modname]
	end
end

tt.register_snippet(function(itemstring)
	return modname_tooltip.get_mod_title(get_modname(itemstring)), mcl_colors.BLUE
end)
