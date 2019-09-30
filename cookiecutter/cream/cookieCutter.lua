local module = {
	_version = 0.3,
	deprecatedFuncs = false -- change to true to allow use of deprecated functions
}

--print("Initializing cookieCutter.lua...")


--[[
custom functions
--
or the most interesting ones owo
]]

stall = function() while true do end end --will just kill your cpu forever

--[[
this section will setup tbe console functions
like print and stuff ya know
]]

rawr = print -- print shit, works just like the one in lua
shout = rawr

--[[
this section will setup the cookie functions
cookies take place of tables basically
]]

cookie = table -- tables become cookies
cookie.cut = table.remove
cookie.remove = nil

cookie.swap = function(deck1, item1, item2)
    deck1[item1], deck1[item2] = deck1[item2], deck1[item1] --they were called decks initially, leave me alone ;^;
end




--[[
	this allows the use of deprecated funtions, for all you legacy lovers -.-
	THEY WERE DEPRACTED FOR A REASON OMG GO AWAY
]]
local function allowDeprecated()
	
	
	
	
	
	cookie.new = function(...)
		local variableNumberOfItems = ...
		local restOfTable = ...
		table.remove(restOfTable[1])
		return {[0]= variableNumberOfItems[1], restOfTable}
	end
	
	
	
	
end
if module.deprecatedFuncs == true then pcall(allowDeprecated) end



--loadstring(...) -- TODO: MAKE INTERPRETABLE CONSOLE


--[[
trash the lua functions
>=3
]]

print = nil
table = nil