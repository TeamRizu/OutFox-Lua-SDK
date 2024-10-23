---@meta

--- Enumerated types are lookup tables associating a string to each numerical value for
--- each Enum. For example, `PlayerNumber[1]` would be the string 'PlayerNumber_P1'.
--- <br>
--- The functions defined in the Enum namespace are valid member functions of every Enum
--- where the first argument is omitted and the name of the Enum is used in place of Enum.
--- Instead of `Enum.GetName(PlayerNumber)` or `Enum.Reverse(PlayerNumber)`, one can use
--- `PlayerNumber:GetName()` or `PlayerNumber:Reverse()`, respectively.
---@class Enum
Enum = {}

--- Both `x` and `y` need to be elements of the enumerated type `enum`. Returns a value
--- less than/greater than/equal to 0 corresponding to the numerical value of `x` being
--- less than/greater than/equal to the numerical value of `y` as determined by
--- `Enum.Reverse(enum)`.
---@param enum table
---@param x string
---@param y string
---@return integer
function Enum.Compare(enum, x, y) end

--- Returns the type of `enum`. For example, `Enum.GetName(PlayerNumber)` will return
--- the string `'PlayerNumber'`.
---@param enum table
---@return string
function Enum.GetName(enum) end

--- Returns a reverse lookup table for the enumerated type `enum`. For example:
--- ```lua
--- local r = Enum.Reverse(PlayerNumber);
--- local n = r['PlayerNumber_P2'];
--- ```
--- The value of `n` in this case would be 1 corresponding to the 0-based indexing used
--- in C++ and not 2 as might be expected for the 1-based indexing used in Lua.
---@param enum table
---@return integer[]
function Enum.Reverse(enum) end
