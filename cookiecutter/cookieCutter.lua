--cookieCutter.lua
require "modules/testing"
errorMessage = require "modules/errorMessages"

local code = [[
?@{
	a
}
]] --will later chnage so this is the raw code input

--local input = io.read()
local lexer = require "modules/lexer"
lexer.lex(code, lexer.validTokens)



io.write("Press enter to exit...")
io.read()