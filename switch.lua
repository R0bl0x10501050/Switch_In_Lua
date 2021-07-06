local Switch = {}
setmetatable(Switch, Switch)

Switch.__call = function(self, condition, results)
	local exists = results[condition] or results["default"]
	if typeof(exists) == "function" then
		return exists()
	end
	return exists
end

return Switch
