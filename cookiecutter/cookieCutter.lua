--start cookieCutter.lua
require "modules/testing"


--local input = io.read()

local lexer = require "modules/lexer"

lexer.lex("{}", lexer.validTokens)



io.write("\nPress enter to exit")
io.read()