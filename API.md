# Modname Tooltip

For you mod items to have the proper tooltip mod title:

```lua
if minetest.get_modpath("modname_tooltip") then
	modname_tooltip.set_mod_title("my_cool_mod", "My Cool Mod")
end
```
