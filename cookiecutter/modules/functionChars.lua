-- all the characters that fucntions, variables and statements can use

local module = {}

local alphabetChar = [[

	ABCDEFGHIJKLMNOPQRSTUVWXYZ
	abcdefghijklmnopqrstuvwxyz
	_
	()
	{}
	\t
	\n
	;
	?

]]

function module.alphabetTable(string1)
	local result = {}
	for i = 1, #string1 do
		table.insert(result, string1:sub(i,i))
	end
	return result
end

module.alphabet = module.alphabetTable(alphabetChar)

return module