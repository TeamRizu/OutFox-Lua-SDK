---@meta

---@class GameManager
GAMEMAN = {}

--- Return the first `StepsType` for the specified `game`.
---@param Game Game
---@return StepsType
function GAMEMAN:GetFirstStepsTypeForGame(Game) end

--- Returns `true` if any noteskins exist for the specified Game `s`.
---@param s string
---@return boolean
function GAMEMAN:IsGameEnabled(s) end

--- Return the localized string representation of `st`.
---@param st StepsType
---@return string
function GAMEMAN:StepsTypeToLocalizedString(st) end

--- Returns a table of all selectable games.
---@return string[]
function GAMEMAN:GetEnabledGames() end

--- Returns a table of all the styles for the that exist for `game`.
---@param game string
---@return Style[]
function GAMEMAN:GetStylesForGame(game) end

--- Sets the current game to `Game`. The second argument is optional, and if
--- provided will determine which theme is loaded when the game changes. 
--- 
--- If the second argument is not provided, the default theme from the preferences
--- for the new game type will be loaded.
---@param Game string
---@param Theme string
function GAMEMAN:SetGame(Game, Theme) end