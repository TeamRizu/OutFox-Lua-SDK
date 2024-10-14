---@meta

---@class GameCommand
GameCommand = {}

--- Returns any announcer that may have been set.
---@return string
function GameCommand:GetAnnouncer() end

--- Returns any Character associated with this item (or <code>nil</code> if there isn't one).
---@return Character
function GameCommand:GetCharacter() end

--- Returns any Course that may have been set.
---@return Course
function GameCommand:GetCourse() end

--- Returns a course difficulty, if one is set in the GameCommand.
---@return Difficulty
function GameCommand:GetCourseDifficulty() end

--- Returns a difficulty, if one is set in the GameCommand.
---@return Difficulty
function GameCommand:GetDifficulty() end

--- Returns the index of this item.
---@return integer
function GameCommand:GetIndex() end

--- Returns any MultiPlayer that may have been set.
---@return MultiPlayer
function GameCommand:GetMultiPlayer() end

--- Returns the choice name.
---@return string
function GameCommand:GetName() end

--- Returns the PlayMode associated with this GameCommand.
---@return PlayMode
function GameCommand:GetPlayMode() end

--- Returns any preferred modifiers that may have been set.
---@return string
function GameCommand:GetPreferredModifiers() end

--- Returns any Profile ID that may have been set.
---@return string
function GameCommand:GetProfileID() end

--- Returns any screen that may have been set as a string.
---@return string
function GameCommand:GetScreen() end

--- Returns any Song that may have been set.
---@return SongObject
function GameCommand:GetSong() end

--- Returns the name of any song group that may have been set.
---@return string
function GameCommand:GetSongGroup() end

--- Returns the sort order, if the GameCommand has set one.
---@return SortOrder
function GameCommand:GetSortOrder() end

--- Returns any stage modifiers that may have been set.
---@return string
function GameCommand:GetStageModifiers() end

--- Returns any Steps that may have been set.
---@return Steps
function GameCommand:GetSteps() end

--- Returns any Style that may have been set.
---@return Style
function GameCommand:GetStyle() end

--- Returns the display text.
---@return string
function GameCommand:GetText() end

--- Returns any Trail that may have been set.
---@return Trail
function GameCommand:GetTrail() end

--- Returns any Url that may have been set.
---@return string
function GameCommand:GetUrl() end
