
---- FUNCTIONS FOR USE IN THE PROGRAM ----

local table = table

function table.contains(table1,item)
  for _,v in pairs(table1) do
    if v == item then
      return true
    end
  end
  return false
end

---- LEXER -----

local lexer = {}
local tokens = require "tokenSeparator.lua"

function lexer.lex(stringToLex)
  local stringToLex = stringToLex
  local lexedString = {} -- returns a table of content for the parser to make sense of
  local currentToken -- what the current token is, usually makes tokens until it hits whitespace or one of the tokens.
  for currentCharacter--[[for seeing where the current character it's lexing is]]=1,#stringToLex do
    
  end
end