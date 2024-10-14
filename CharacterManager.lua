---@meta

---@class CharacterManager
CHARMAN = {}

---Returns a table of all characters installed.
---@param bIncludeDefault boolean # Includes default on the result.
---@return Character[]
function CHARMAN:GetAllCharacters(bIncludeDefault) end

---Return the `Character` corresponding to `sID`.
---@param sID string
---@return Character
function CHARMAN:GetCharacter(sID) end

---Returns a random character.
---@return Character
function CHARMAN:GetRandomCharacter() end

---Returns the number of characters available.
---@param bIncludeDefault boolean # Includes default on the result.
---@return integer
function CHARMAN:GetCharacterCount(bIncludeDefault) end