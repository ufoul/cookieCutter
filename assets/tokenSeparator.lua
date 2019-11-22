local module = { -- this is what the lexer will use to split up tokens and 
  whitespace = {" ","\t","\n"}, -- the program will for the most part ignore these
  tokenToCode= {
    ["{"]={
      ifStatement="then", --upon being  an  if statement, replace with then
      whileLoop=  "do",--upon being a while loop, replace with do
      forLoop=    "do",--upon  being a for loop, replace with do
      table=      "{"
    }, --these  are special tokens that the program habndles differently
    ["}"] = {
      statement = "end", --"statement" will overwrite any statements or loops, remove if you wantconverted to something else
      table =     "}"
    },
    "("="", -- leave as a string for the program to never replace it, the program just checks if the type is a string then leaves it alone if it is. MAKE AN INQUIRY IF THIS IS AN ISSUE
    ")"="",
    '"'="",
    "="="",
    ";"="",
    
  }
}

return module