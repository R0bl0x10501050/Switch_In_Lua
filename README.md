# Switch_In_Lua
Use switch statements in Lua!

# How To Use
```lua
local a = 100
local b = 70

switch(a > b, {
	[true] = function()
		print("worked!")
	end,
	[false] = function()
		print("hmm, didn't work!")
	end,
	default = function()
		print("default")
	end,
})
```
