local module = {
	currentChar = 1,
	tokens = {}, -- the current tokens in the program, used when in compiled mode
}

local errorMessage = require "modules/errorMessages"
getmetatable("").__index = function(str,i) return string.sub(str,i,i) end

function table.find(f, l) -- find element in table, taken proudly from stackoverflow, might need later
	for _, v in ipairs(l) do
		if f(v) then
			return v
		end
	end
	return nil
end


function table.contains(table, element)
	for _, value in pairs(table) do
		if value == element then
			return true
		end
	end
  return false
end





module.validTokens = {
	"r",
	"(" , ")",
	"{" , "}",
	"@",
	"?",
	"\t",
	"\n"
}

function module.advance()
	module.currentChar = module.currentChar + 1
end

module.lex = function(stringToLex, tokenTable)
	
	
	local string1 = stringToLex -- for simplicity god dammit
	for i=1,#string1 do
		local possibleTokens = {}
		local currentToken = ""
		currentToken = string1[i]
		if table.contains(tokenTable,string1[i]) then
			io.write(currentToken)
			table.insert(module.tokens,currentToken)
		else
			errorMessage.invToken(currentToken)
			return
		end
	end
	
	
end

return module