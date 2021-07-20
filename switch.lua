return function(condition, results)
	local exists = results[condition] or results.default
	if type(exists) == "function" then
		return exists()
	end
	return exists
end
