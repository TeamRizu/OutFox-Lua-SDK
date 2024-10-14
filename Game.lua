---@meta

--- Represents a game mode.
---@class Game
Game = {}

--- Returns `true` if notes are counted separately in this game.
---@return boolean
function Game:CountNotesSeparately() end

--- Returns the mapped judgment for `tns`.
---@return TapNoteScore
function Game:GetMapJudgmentTo(tns) end

--- Returns the name of the game such as 'dance' or 'pump'.
---@return string
function Game:GetName() end

--- Returns whether this game allows the players to have separate styles.
---@return boolean
function Game:GetSeparateStyles() end