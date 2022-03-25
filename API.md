# Modname Tooltip

For you mod items to have the proper tooltip mod title, you must call the `modname_tooltip.set_mod_title` function:

```lua
if minetest.get_modpath("modname_tooltip") then
	modname_tooltip.set_mod_title("my_cool_mod", "My Cool Mod")
end
```

This will add "My Cool Mod" at the end of your items tooltip.

If you don't call this function, your base nodename will be shown instead.
