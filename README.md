# Switch_In_Lua
Use switch statements in Lua!

# How To Use

The switch statements support two things, function calling, and returning values. If you supply a function as the value for any given key, it will call the function and return the output of that function call. If you supply anything other than a function as the value for any given key, it will return said value.

## Case 1: Function calling
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

Output:
```
worked!
```

## Case 2: Returning values from a function call
```lua
local a = 100
local b = 70

local returnValue = switch(a > b, {
	[true] = function()
		return "worked!"
	end,
	[false] = function()
		return "hmm, didn't work!"
	end,
	default = function()
		return "default"
	end,
})

print(returnValue)
```

Output:
```
worked!
```

## Case 3: Returning value from a non-function call
```lua
local a = 100
local b = 70

local returnValue = switch(a > b, {
	[true] = "worked!";
	[false] = "hmm, didn't work!";
	default = "default";
})

print(returnValue)
```

Output:
```
worked!
```
