# Modname Tooltip

To determinate which tooltip title will be shown, this mod use the folowing methods, sorted by priority:

**API:**

Your mod can call make an API call to set his mod title. This is very usefull for modpacks which use different mods to split the code in different parts, but still aims to provide an unified gameplay.

```lua
modname_tooltip.set_mod_title("my_cool_mod", "My Cool Mod")
```

**Title defined in `mod.conf`:**

If no API call is made, the mod will try to find the title defined in your mod's `mod.conf`.

**Mod name:**

The fallback method is to just put the modname in the tooltip. This will obviously not look as good as using the two above methods.
